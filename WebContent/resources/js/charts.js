	/******************************************************************
		*Description: This function will set the parameters for the chart.
		This data should come from the database only.
		*******************************************************************/
		$(function () {
		    Highcharts.chart('container', {
		        chart: {
		            type: 'column'
		        },
		        title: {
		            text: 'Calories Balance'
		        },
		        subtitle: {
		            text: 'your daily consumed calories'
		        },
		        xAxis: {
		            categories: [
		                ''
		            ],
		            crosshair: true
		        },
		        yAxis: {
		            min: 0,
		            title: {
		                text: 'Calories'
		            }
		        },
		        tooltip: {
		            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
		            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
		                '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
		            footerFormat: '</table>',
		            shared: true,
		            useHTML: true
		        },
		        plotOptions: {
		            column: {
		                pointPadding: 0.2,
		                borderWidth: 0
		            }
		        },
		        series: [{
		            name: 'Calories Eaten',
		            data: [1900]

		        }, {
		            name: 'Calories Burned',
		            data: [800]

		        }, {
		            name: 'Calories Lifestyle',
		            data: [3000]

		        }]
		    });
		});
	

