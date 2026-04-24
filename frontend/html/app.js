async function fetchTeam() {
    const tableBody = document.getElementById('tabla-equipo');
    const statusEl = document.getElementById('status');
    try {
        const response = await fetch('http://localhost:5000/api/team');
        const data = await response.json();
        
        tableBody.innerHTML = ''; // Limpia la tabla
        data.forEach(member => {
            tableBody.innerHTML += `<tr>
                <td>${member.nombre}</td>
                <td>${member.legajo}</td>
                <td>${member.feature}</td>
                <td>${member.servicio}</td>
                <td>${member.estado}</td>
            </tr>`;
        });
        statusEl.innerText = "ONLINE";
        statusEl.style.color = "green";
    } catch (e) {
        statusEl.innerText = "OFFLINE";
        statusEl.style.color = "red";
    }
}
fetchTeam();
