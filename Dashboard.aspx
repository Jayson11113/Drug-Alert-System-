<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="DrugAbuseAlertSystem.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Include Google Maps API -->
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center">Dashboard</h2>
    <div id="map" style="height: 400px; width: 100%;"></div>
    <div class="row mt-4">
        <div class="col-md-6">
            <canvas id="graph1"></canvas>
        </div>
        <div class="col-md-6">
            <canvas id="graph2"></canvas>
        </div>
    </div>

    <script>
        let map;
        let markers = [];
        const graphData = {
            critical: 0,
            suspected: 0,
        };

        // Initialize Google Map
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: -1.286389, lng: 36.817223 },
                zoom: 12,
            });

            // Add click event to place a marker
            map.addListener('click', (event) => {
                addMarker(event.latLng, 'Critical');
        });
        }

        // Add a marker to the map
        function addMarker(location, type) {
            const color = type === 'Critical' ? 'red' : 'yellow';
            const marker = new google.maps.Marker({
                position: location,
                map: map,
                title: type,
                icon: {
                    url: `http://maps.google.com/mapfiles/ms/icons/${color}-dot.png`,
            },
            });
        markers.push(marker);

        // Update statistics and graphs
        updateStatistics(type);
        }

        // Update statistics and graphs
        function updateStatistics(type) {
            if (type === 'Critical') graphData.critical++;
            else if (type === 'Suspected') graphData.suspected++;

            // Update Graphs
            updateGraphs();
        }

        // Update Chart.js graphs
        function updateGraphs() {
            graph1.data.datasets[0].data = [graphData.critical, graphData.suspected];
            graph1.update();
        }

        document.addEventListener("DOMContentLoaded", function () {
            // Initialize Graphs
            const ctx1 = document.getElementById('graph1').getContext('2d');
            window.graph1 = new Chart(ctx1, {
                type: 'bar',
                data: {
                    labels: ['Critical', 'Suspected'],
                    datasets: [
                        {
                            label: 'Hotspots',
                            data: [graphData.critical, graphData.suspected],
                            backgroundColor: ['red', 'yellow'],
                        },
                    ],
                },
            });

            // Initialize Google Map
            initMap();
        });
    </script>
</asp:Content>
