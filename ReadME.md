# Projekat Senzori

Projekat Senzori je aplikacija razvijena za potrebe praćenja i obrade podataka sa senzora. Aplikacija omogućava prikupljanje, analizu i vizualizaciju podataka u realnom vremenu.

## Sadržaj

- [Opis](#opis)
- [Tehnologije](#tehnologije)
- [Instalacija](#instalacija)
- [Upotreba](#upotreba)
- [Doprinos](#doprinos)
- [Licenca](#licenca)

## Opis

Ovaj projekat omogućava rad sa različitim senzorima i prikupljanje podataka iz realnog sveta. Podaci se mogu skladištiti, analizirati i prikazati putem različitih grafičkih interfejsa. Projekat je razvijen u edukativne svrhe i može se koristiti kao osnova za složenije sisteme upravljanja i monitoringa.

## Tehnologije

Projekat je razvijen koristeći sledeće tehnologije:

- **Programski jezici:** Java, Python, C
- **Frameworks:** Spring Boot (za backend), React (za frontend)
- **Baza podataka:** MySQL
- **Alati:** Git, Maven, npm

## Instalacija

1. Klonirajte repozitorijum na svoj lokalni računar:

    ```bash
    git clone https://github.com/jankovasic/Projekatsenzori.git
    ```

2. Navigirajte u direktorijum projekta:

    ```bash
    cd Projekatsenzori
    ```

3. Instalirajte potrebne zavisnosti za backend:

    ```bash
    cd backend
    mvn install
    ```

4. Instalirajte potrebne zavisnosti za frontend:

    ```bash
    cd frontend
    npm install
    ```

## Upotreba

1. Pokrenite backend server:

    ```bash
    cd backend
    mvn spring-boot:run
    ```

2. Pokrenite frontend aplikaciju:

    ```bash
    cd frontend
    npm start
    ```

3. Pristupite aplikaciji putem preglednika na adresi `http://localhost:3000`.

## Doprinos

Ako želite da doprinesete projektu, slobodno napravite fork repozitorijuma, izmenite kod i pošaljite pull request. Svi prijedlozi i ispravke su dobrodošli.

## Licenca

Ovaj projekat je licenciran pod MIT licencom - pogledajte [LICENSE](LICENSE) fajl za više
