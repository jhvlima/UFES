# **Roteiro de Provas: P, NP, NPC e NP-Hard**

Este guia resume os passos lógicos necessários para classificar um problema e fornece uma biblioteca de problemas "base" para realizar reduções.

## **1\. Como Provar que um Problema ![][image1]**

**Objetivo:** Mostrar que o problema é "fácil" de resolver.

1. **Apresente um Algoritmo:** Descreva um passo a passo (pseudocódigo ou descrição textual) que resolva o problema de forma determinística.  
2. **Análise de Complexidade:** Compute o tempo de execução (pior caso).  
3. **Veredito:** Mostre que o tempo é ![][image2] para alguma constante ![][image3].  
   * *Exemplo:* Busca binária, Dijkstra, Multiplicação de matrizes.

## **2\. Como Provar que um Problema ![][image4]**

**Objetivo:** Mostrar que é "fácil" conferir uma resposta pronta.

1. **Defina o Certificado (![][image5]):** O que seria uma solução candidata? (Ex: uma lista de vértices, uma atribuição de valores booleanos).  
2. **Descreva o Verificador (![][image6]):** Como o algoritmo checa se o certificado ![][image5] resolve a instância ![][image7]?  
3. **Prove o Tempo de Verificação:** Mostre que o Verificador roda em tempo polinomial em relação ao tamanho da entrada original.  
   * *Dica:* Quase todo problema de decisão onde a solução é "pequena" está em ![][image8].

## **3\. Como Provar que um Problema ![][image9] é NP-Hard**

**Objetivo:** Mostrar que ![][image9] é tão difícil quanto os problemas mais difíceis de ![][image8].

1. **Escolha o Problema de Origem (![][image10]):** Escolha um problema que você **já sabe** que é ![][image8]\-Completo (veja a lista abaixo).  
2. **Defina a Redução (![][image11]):** Crie uma função que transforme qualquer instância de ![][image10] em uma instância do seu novo problema ![][image9].  
3. **Prove a Complexidade da Redução:** A construção de ![][image11] deve levar tempo polinomial.  
4. **Prove a Corretude (Se e Somente Se):**  
   * **![][image12]** Se ![][image10] tem resposta SIM, então ![][image9] deve ter resposta SIM.  
   * ![][image13] Se ![][image9] tem resposta SIM, então a instância original de ![][image10] deve ter resposta SIM.

## **4\. Como Provar que um Problema ![][image14] (NP-Completo)**

1. **Passo A:** Prove que ![][image4].  
2. **Passo B:** Prove que ![][image15].  
3. **Conclusão:** Como ele atende a ambos, ele é ![][image8]\-Completo.

## **5\. Biblioteca de Problemas para Reduções (Sua Caixa de Ferramentas)**

Quando precisar provar que algo é ![][image8]\-Hard, escolha o problema da lista abaixo que tenha a estrutura mais parecida com o seu:

### **A. Lógica e Booleanos**

* **SAT:** O pai de todos. Útil para problemas de restrições lógicas puras.  
* **3-SAT:** Uma versão simplificada do SAT onde cada cláusula tem exatamente 3 literais. É a base para quase todas as reduções de grafos.

### **B. Grafos (Estrutura e Conectividade)**

* **CLIQUE:** Útil quando o seu problema envolve encontrar um grupo onde "todos se relacionam com todos".  
* **Conjunto Independente (Independent Set):** Útil quando o problema envolve escolher itens que **não podem** ter conflitos entre si (como o seu problema do supermercado).  
* **Cobertura de Vértices (Vertex Cover):** Útil quando você precisa de um conjunto pequeno que "vigie" ou "cubra" todas as conexões (arestas).

### **C. Caminhos e Ciclos**

* **Ciclo Hamiltoniano:** Útil para problemas de rota que precisam visitar todos os pontos exatamente uma vez.  
* **Caixeiro Viajante (TSP):** Versão com pesos do Ciclo Hamiltoniano. Útil para otimização de custos/distâncias.

### **D. Números e Partições (Aritmética)**

* **Subset Sum (Soma de Subconjunto):** Dado um conjunto de números, existe um subconjunto que soma exatamente ![][image16]? Útil para problemas de alocação de recursos ou carga.  
* **Mochila (Knapsack):** Útil para problemas de seleção de itens com peso e valor sob uma capacidade limitada.  
* **Partição (Partition):** Pode-se dividir um conjunto de números em dois grupos com somas iguais?

## **Dica de Ouro: Qual problema escolher para a redução?**

* Se o seu problema envolve **atribuição de valores (Sim/Não)** ![][image17] Use **3-SAT**.  
* Se o seu problema envolve **selecionar itens sem conflito** ![][image17] Use **Independent Set**.  
* Se o seu problema envolve **agrupamento total** ![][image17] Use **Clique**.  
* Se o seu problema envolve **distribuição de pesos/valores** ![][image17] Use **Subset Sum**.  
* Se o seu problema envolve **visitar locais** ![][image17] Use **Hamiltonian Cycle**.

[image1]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEEAAAAfCAYAAAC4c6DCAAACdUlEQVR4Xu2XPWtUQRSG7+IHiiKKLkv2a3az27hYBLbVIqKglRAshGCVfyCInYVgIXYBjWwU04lgYWOjIva2VsJCFDFo0M5CxcTnOLM4Hu/e3MyuXzAPvGR33nvOnZyZe+5skkQikcgQjDHTaBWte/qMHlUqlf36+j8B955DH9Sc3nljb9H5arW6U8eOBElvorVGo3FCe3+DUqm0i/k8Riv1en3SswrM8RTjnxhf4PtWzwuHZPtI+gwtU92K9jcLk9xLrglfjO3Q12XBLqwS91oKIQXxPZfzJXqPDvpeMJLIJbyXhFe2QPxRKSZFvc/fHrqO5vh+erPFJeYYsWvocoo3yfiKSO2ScEg2i9ZJeEF7eeh2u9uIvUiOa+12e4/2Q5C5yJzQSe2xq844704Svmg/Q7J59IUbH9ZeHoidkQJIMbQXgjw65HuQttLNZtPgv8B7Lp99LxivH/RJWtL+RkiHNrapNrUXijw65FtGq8zvtrGPVo9//q6xb4ar49px3zEb9INOp7M9a4WJm2CiN1qtVk0+p0mKm5VD4/WDxVHy5Ma4foDOaS+xze5SrVY7pI0BboJPjFutYWIVp3TsMLx+MKO934KxWzm1H7At23i3sg4l5XL5ALELxWJxt/ZC8PrB+F5/WXj94JfzgWw7t4qz/ngKcni5Qq7j2gjBOx88HVdhM2HiXW720ah+YOwW7+G/MjkannRpt3ojr5ycWI3tB/PaGyuu8bwxP87lX42tvkg+D8Zzv4cblodyXqCHlBkq6GuyIO6ssb8PBvcWyYFoWl/7r7NFCoyWmHxfdpLbTX0Kc0RfHIlEIpFIJBKJRCKR/4BvDiK/hr8UfKYAAAAASUVORK5CYII=>

[image2]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAYCAYAAAC4CK7hAAAD6klEQVR4Xu2XX4jUVRTHf8NqFKYRtS3Ov9/M7MKya2AyJglaIhL2sBG1hpEE+mI9+KAW4jyJIrIPhYqiiLDow/rgo8RCRUVFSdtTsCaoSCGKSu5bDwmrn6+/e2fuHGeYGXeIHvYLh/u753vuuefee+6fXxTNo/soFAqfxHH8D3LQcv85ent7nyWgp62+Hagdg7iQy+Xethzoyefzz1OmLNESmUzmhWKx+CYORulgCFWPtQlBIK9gO14qlZ6zXDugvyz9XMRHyXIgBbebPnbq25KNkCL412nwKw0nkQ8l1L+ivMJsvWobCC6I7whimeXaBW03qJ+BgYElfI/gbyL0Vy6XF6I7i7wXtnsMMsTRGIbXbcDOySlkBlkRciBFu8PIPqPvCPitEPghZBP9r6V+GXkrtEH/Mrpf+vv7c6G+CgWKgxMY3WNFVllegBtC/kaORcHyOueXVQbmHcHtjy8pfyCOMqqU2xM2nRdgd67ppEF8jMGsSst5yDE2U8h0Op1+MdDvcUE80SYXstlsBh8/42NjnKTo+9bGI07SfcoNtAacDEDcRP5gNfrqyADBQP5ElkrnZxKpWPsoOWnWuBnWzCoFhXdic3j4/aFTz01MRXuVVV7pbTzQL1cMNv0VzD6IB3GL85sOStjcCgeiUnW4kQb2O+D2I5dcH8eRA+g/oryKfB65FOV7l2z0TbmV+gTlXib5mdCn4PtE3q0qNQMovkdmNSuB/WMQLzvkx8HBwcVOV6Z+WzMf2mplCeQIm/Il538m3HtwZ6RX/6oPDw8/pX3qeeff7o9H8DFr5arKYHTaxFrupoA/ijzwMydoIMhfLn2qUEpg94E7lm/wPRa52S/U0vGbvr6+RWG7dhBMfi2DgoFU06URdNzBX0Hu5oOzvdlAPNwq/huuNvWiBlcXSAcIBnK6qtTpg2K6xUC0SffGyT7aHRKtBoJ9BbmVD25rfG2OkzfV6tC2XTRMrcidy8h9m+ceyu04uQhPhXksKMA4OfHqLi6hSQr5/i7qKUO5Dbs36hq2QL52eu6qI1CsUKAYjNtA0a9H7iBfNDpB/IoSzHbL+f0RBykU11K54g6C052+zZzfa2G6VqEzGfJqIXljPXpfIZPUf9dgouAmN9ANPI7NUUugW43M4GOd17mnzgTyG/J1o3uiFZQ5tJ3WJWo5jx4MhjAcRUboJB01H0AVynlNgJbcUM2e3im9rJV6Rt8WCsmddI7PBZabExQUjn+ig42W6zZcX9/qUWm5rkA/Q3RwvtE+6iZY4S3ISbuXuwn9+Hwm0bcluwH3JpzkFI0t11W4jfwpKfaa5eYKPVnwfVAnluXm8X/EQ6LFC/51Ciz/AAAAAElFTkSuQmCC>

[image3]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAsAAAAXCAYAAADduLXGAAABEElEQVR4XmNgGJSAUVpaWlhBQUEAXQIFABV0ysvL/wLi/0BchC6PAYCKgoD4t5ycnA26HAYAKpwExA9kZGSk0eVQgLq6Oi9Q4WEg3gp0Ege6PAoAKtIE4rdAJ5RDhRiVlJTUgHxXoE2c6IqjgfgfUNLF2NiYFWh6I5DfDaQ3YngY5l5ZWVlloIZ6oCIDkCJ59NABSgoCBU4D8RWgopkgJ4HEQc4A8gvFxcW5kU2FBxnQfSpABbeA/PVYPQpzAizIgIoWgmyC2ugN5MeDFYqKivIABQ4A8RoglwVJ8RpQKADpHiBWBCtWVFQEsuWfAXEO1CKQTcFA/ASI10HFGWFyjCDrgDQzTAAEQDYSTFAjGgAA7Kw/yuu5o6cAAAAASUVORK5CYII=>

[image4]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEQAAAAYCAYAAABDX1s+AAADQElEQVR4Xu1XPWgUQRS+I1EU/9Fw5H7y7i4HR4KFeDaCFhEFbSzELo2QQotUgggpgsRCtPI3SoyoiIhgYZMmERFsArEVbQIqEsGgaWKh4sXvc2b3Ju927/aCGJD94GP35ps3896bmTd7iUSMGDFi/CWISB84Dy45/AFOZTKZ7br/vwDmHgAXHX+uoznp6fAri7a3rs/5fP6KtWU8n1wN/Ap+tu+L6Hu5VCpt9icMAjqOg1V0Pqy11UBHR8dG+DIpZnE+ggXdB21DXV1dF/DaFqAxnp/Q96n23UwOx+YcruYDRtvQaQZ8l81mM1pvFZhsK8bqdIm2dbpfI8CnIuxug5fErOyg7oO2azpgolwub4L2EpwtFAopV2MS0P4CrML2oKv5gNgDfgGf4Ge71iMiCfsD4AwmeornGDgKDuD38VYTDbsj4JlcLrcTzwVwulgsbvF0LiKS/FgHTDSKx1n8ut3jA2I/uIQOZ7UWBZVKZQ1shzHGjaZnMyIQ7Dm7gu0Y95Go48ygod+kXrMyQBKPMh7wtNbQthf8LirBywDxasOMNQFsjzEZTIzWVoJUKrUB4417u4qJYEKYmIRNgJhFrAuYCIuHCUD7M3AeSdvjaj6cLVR33qIATq+n8xJQ9FYKr354dccGMg0u8AixDdpFHTDh1Ajugodiju4Y+t/Hcw42d3lLaTsf0uC8Eb29vWsbrTzsOjHJre7u7hzfg8hENxpDQ2z9UG2DYq5XHqUo9WMKurh+RCrsYuuHBG8/FsoRb1WCYCd7LnYlwghndmnbMDj1wwfGYHS8ft+AfRHqx5DWIkFC7msCx6EE7Q6PhdY8pNPpHXQu9E5vEXbLPwjY1lyc8zbYV0jaSaX/gZj6UdUJjQSnftR9f3CLi1ndfrc9AEl7ng9pYSXQ9cOFcwUHLqDz/VEXTyRg0AqMv4mqH2KOwRj0DxKhWNqzOgH2aK1FMLknMM4o37WYqF3Br7kztegkbCIooaHgdoLRnNS+9X+JOZ8k3712/5prhrzBJMYehmPpRHBAoYDtKTGf6d7cc0F1J2+u4GV+Yb79aHvv2JL8/zLgmK4K2phs8B6cmeUOs7tslk7rzjFixIgRI8b/j98QNRadHJa5hgAAAABJRU5ErkJggg==>

[image5]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAZCAYAAAAMhW+1AAAAtklEQVR4XmNgGAVYgaKioricnJwvkLYzNjZmhUsoKChIyMvLrwHi9UB2BFBRHZDeBdMFFJe/AsSzQLqUlJT4gewTQPwWJM8CZMwB4idArAg1ECSWBDQhgLACIEMTZBQQrwFJQBUgAMjFQMn/QFyELgcGQAlPkAKQQnQ5KSkpLgZlZWVZoILbQPsSkCWBYk5AvA7GAZkCcuRqIJ4FxAeAJrarqKjwwXWA/A8KRaCJYkAuM1xiWAAAzQwq8pbVnG0AAAAASUVORK5CYII=>

[image6]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAXCAYAAAAC9s/ZAAABIklEQVR4XmNgGAUMUlJSIvLy8oeB+D8S/iUnJ+cCU6OlpcUGFFuOrAYoX4ZsDgNQwBckoaCgsBBFAgGYgfLLgLjK2NiYFV0SZIAxUPIrEK8BclnQ5YEGmwPlFsvIyHCiy4EB0AAloILnQHxAVFSUB1kOpAkovwAoZ4gsjgIUFRXFgQruAvFDIJZElgNqjgG6oBHIZEQWRwEgW0G2A/FbINaEiQM1KgD565WVlcWQ1WMDLCD/A/E3WVlZU6gYI1B/J5Dvh6wQJwBqniMPiSJfEB+o0RbIn4I11LEBoOIgkAFA3ArERUDb09HV4AWgxAPU+A+IrwPxYvTYIAiQ0sJXULyjyxMEQI2S8pBobGbAF2W4ACiwgK6wFhcX50aXGwWDGQAA8u5CHC/Au80AAAAASUVORK5CYII=>

[image7]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAsAAAAYCAYAAAAs7gcTAAAA+0lEQVR4XmNgGAX0BsxycnLGioqKbuLi4txAPqOSkpIaUMxVRkaGE64KKMgvLy+/DIiLgLgaiC8qKChMANKtQDwXiNcD+RwgtYxATousrKwtiANkSwLxQyBeDrRFD0i/BeIDoqKiPAxAK4SAnBqYTqACfSD/ExBHGxsbswKdEQvEWnBnIAOQIiD+CnI/uhw6YAQqmg9UfBpIC6JLwjw3GSiZJiUlJQJkXwVpAGkEyYNCAyQHVgyU9ATi/0DcC8SOQPwbKFkOMwjol4VAf6mAFQMllIAKzgHxUqDERiAuALJvy0OCbBsQO0EdAQGgkFBWVhYDMpmx8UcBNgAABJY2Qx0L1WMAAAAASUVORK5CYII=>

[image8]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB8AAAAYCAYAAAACqyaBAAACCElEQVR4Xu1UO0hDQRBMwMIP/lAI5ndJCARFEBELQQXFQhEsbLW3EQQFBSsbCxsFtdLKQtJIOiGojdhYCHbaWggWIjY2Cn5mcnvJ5XzPWNmYgSHvdvZu93ZvEwhU8a+hlBoBH8FPMh6P56PRaJ3R0+l0UyKRODG6MBcKhRrC4XA7/M+xfre0N/BebO/UwS47posgHPdk4ys44DrANg0e2YlZ2oQEXrftTBy2Y/AZ7LW1IpBZK253gN8FOWQX5qDtA9siOGPbDGBflX0TroYzV0TbdrUCkslkD5y24NAB3ipdtqTlUoP1Pv0sWwFIulbp2z3gjJSrw74uwcuqUgSEGRwyx2/8ronzvNHZW6lMa2mXBtoQge8deMZ3YGupVKoZ9kvl08oCIGzi4D5+x2KxbqV7dMnNtEEbxHqnfJcGtDFoHx43C0JbFm2Ja0cv9Zu3ExNLnOUm2MdpYFWUT79NT2Ui+GgNr8ErtGo44BWYMP0OWA4MKhln+bpV5X4/o2JDSr+ZAqG1uP7fwBuZfhtYvWL5R3/R74tMJtPo6pXA+d5B1v2ugGCzSj+8GwTfcHXC6rf3GP0Ej34XgTKHlB47JuDZbyXzjeSnXK0iWFIwh+D1rkYk9Ng9gZ2uxreA5PN+ui+kXC9yK5JzOOn6cewYwO53JBJpg++p0n/FZj+/D/0uUUUVVfw5vgCX6aa4G6JHLwAAAABJRU5ErkJggg==>

[image9]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA0AAAAYCAYAAAAh8HdUAAAA20lEQVR4XmNgGOZAXl7eEYhfA/F/JPwLiHdLS0sLo6tHAUBFc4D4n4KCgge6HFYgJycnCNRwGogfyMjISKPLYwVAxZpA/BaI1wC5LOjyWAFQcTTIL0Aby9HlcAKghklA/BuoyQZdDitA8s9dRUVFcXR5rICQf7S0tNiMjY1ZUQRh/gHiIhQJCGAEijfJysrqoIjKQ+IHq3+Awa8ClJsLpDnhgvjiB+QkoPgskEuQxUGajIGCX9H9A+RLgjQA5R8BaUWYYhcg55k8Iq39BeInUAxiw8SXIxs2CugKAAlLQRh1BByxAAAAAElFTkSuQmCC>

[image10]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAYCAYAAACbU/80AAACFklEQVR4Xu2VMWgUQRSGs1yUSGIRk2PJ7d7NrQQOlzSyhQg2gkVsBLER7BXsvMKD6yJYGQKmSBESLERsFBXCKaQ4tLC5RoR0CiJyjVjaKGq+581uxsdF8Y5NdT/8zLz3L+/NvDczOzY2wggOjDFn4Wf4y+E3uB0EwYz+PjeQcAP+rFari1rLHZVKZZrkHfghDMNA67mDxCfgF/gIc1zruYPEV6T3VKKhtQMByVfhdxZwRmu5w+n/+yiKfK3njn/1P47jw0mSHNJ+F3JzTO8qP8D0XE0ONfortC6bPe5qv5H2H9a1Bjz8t8rl8oIWNKSNJLqm/QISn0N/gj6htfT+9+0/q59H22Q8ojUX0kb4sl8MATGa8Lb2//X+S9nxr0uFHLdny33f8qQ4Ta+N7VKpNJt+SOwY3uP7u2iv4fksivNRgvDVqP5jz0ly9I+MkXV72Dexm8wLPNMh9gs5uLJINwbzS/BxsVickqowf/dH/21Pumbv7f8BP1nKPPU/dIKeZjdv00qZ3iLf2E1k/Zf/B3YnfdJtrue+709mCxgEBGoYZ5d2Zzu21Fn/ZUGyUKmQ2Ga//v8vCFKHd6wpt2NFWiILYN4m6SnGi7IA+FTKL4cXX4tbdIHx+lBVoNfEMFsEv2oPVl0OqvW38C1JnyUx9jr2DcZlxmeMa4yXdcxB4LGrY/phkvut73itVjvKUIDeUDsfIQ/sAuaikaLzTDuaAAAAAElFTkSuQmCC>

[image11]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAXCAYAAAA/ZK6/AAABHUlEQVR4XmNgGFpAXFycW1FR0U1JSUkNyGVEl0cBQIXyQHBYQUGhA0g/lZOTc0VXgwKAChtAGoC4FYj/A/kR6GrgAGiaIFDRaSCeIyUlJQK0TR8ozIyuDg6ACjWB+C0QF6HLoQCgtRxARZJAHA3Ef0HOAPFFRUV50NWCAdAp1kAFs4D4DBD/BOKlIL6srKwpuloUADR5IcgPIL+gy2EAdXV1XnlI6KwBclnQ5TEA0FQboOLfQNoXXQ4rADonHajhEzQoCQOg4klAfBUU/uhyGACUdoCK9xDtfmlpaRmg4icgZ6HLIQNGoIICoMLdQDoApAEY7jroiuBAWVlZDKjwFijcgXgaMHSmMxBwDsiGTCA+BdQwGZj2+dEVDHIAAMwVOnCj+8RhAAAAAElFTkSuQmCC>

[image12]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAAXCAYAAADpwXTaAAAAyUlEQVR4XmNgGAWjgDKgoqLCp6CgMFNZWVkMXY4sICsr6ycvL18DZDKiy5EDGIGuK5CTkwsFsdElGWRkZISAkjuA+BGxGOi6u0BcCtTLiW4eOYARaJgTEG8HujTA2NiYFV0BSQBkANCgRCC+BTS0GhhB7CBxRmlpaWGggCSxGOg9XaB3VwCxK1A/M4oNQEFnIA4hBgMNawXifUAXScANIQcAfSADNGi9oqKiPLocqQAU6C3AtGaLLkEyACUDoNfMgUwWdLlRMEgAAB76M8+BCHe2AAAAAElFTkSuQmCC>

[image13]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAAXCAYAAADpwXTaAAAAxUlEQVR4XmNgGAWjgDSgrKwspqCgMFNFRYUPXY5UwCgvL18jJyfnii5BKmAEGhIHdFUBiI0uSTQwNjZmBbqoGIjvAg18RALeISMjIwQ2BOgKDqABQUB6I5B2YiDXRcAAZgcaUA3E14E2xACFmNHVkAOYgS6LBBq6GehkXSAtSSyWlpYWZsDmG6CBEkAX7gQqqgXSIURiZ1B4o5sFBoqKikCz5NcDbZRBlyMLAG1zBbqykwGb88kALLKysiagCEKXGAWDFAAAUEszYEgWlnQAAAAASUVORK5CYII=>

[image14]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAAAfCAYAAAARB2hWAAAERElEQVR4Xu2YXWjNcRjHz8lL5D3WsrOd55xttYwiK1KUyWviQrtbinZBckUoSV6SvFx4HQ0hSUrhws0myUrT5E7crJCmiN3Mxcjm+/X7/bef5/zPOf+xw+j3qaf/2e/5vT7P73me/3+xmMfj8Xj+B2pqakYlk8mZkLpUKrUYMsaq4qWlpZV4jnD7DzkiUgv5AOlz5AukJZFITNX9/wRYuwHS7eznDJrjgR77KkXbS3fPMNxJO5bneefqIJ8g7+3vbvQ9UVlZObF/QcC/oTsl5uwP0Wc/nocgzyCr4aCdHOeOKShY9CKkF4uu1Lq/QVFR0Xjspdka6C0krfugbTcMdTgWcmvteb5Cv1C1z4W859xcw7YtgXxA21062+3PSwndYzHOXOfqCgY2PQWLtUNeISwTWj9YcLDJmGu6K07oRwJ7Kse4C5Cj1hhbdR+0ndYGJ1VVVROga4V0pNPpYldHJ6D9IaQXY5fiuU6M05uYrty+Adj7Jug/QmZoXUHgQnbBW/hzpNZHJC7mprXjoHd4QEgjpIH5eLCOxrhVkB1lZWWz8OyCtJWXl08K9LxEMNRNbXCS6zzO5WP0rBcTGY/cuTXotwb9WulorSsIWKwe0oeFd2ldFGwh3Is5zurc/KvASPt4g/FzJOa9ISqd0ujQn6N+YJQBTlzL80C2aR3aFkB6MPYJnrc5r+RJRdYhp3R7weBiEpJvo8ID0RnZQn6wFBcXj8N8F4OooiOs4W7ErAPEXKIMg5Ns52EUoP2+mKjYiGePmIie4vbTMN0G9abgOCGckW+jAKONpfEkpOj+KklbP4K6Yw3ZBuliCmMbdEe0wYlTI2js62JSZxP6X8WzE2Mus3AzG4iJoj9386MgOfItqa6uHp3r5mPcdBzufEVFRRl/hwkdnWsOjdj6odq20oA2lUWpHy3Qi7uPwMHEOqgPUu+O/+twQ3ZjYeHPQn0guJVh2MM+EHsTswkMMEePzYY1OutHP5iD1uXr7wtIbYT6sVvrXAKHsD5onQucOhv9tuv2giFZ3tcJv0yhu8S0pHUBJSUl02icocqxNuVc098DMXM5DlpjP4VBNyn9D8TUj17tUI2Yj758DuGae9BnmVYUBKd+ZHx/MMWIud35Qjpu8/mQbDqp6oeL8woceoGc74+M82gw/2L0+ybqvwAu6DMf+uODSbe/BQ5VgwU/i6ofYtJQE/RvJEKxtrn6nvz+hxOduwHzNPK3VsYGXoGfMzK10nHYvTCHujgXriskmriPFdBdz/V9MmRwA1isUwb+18ObwvxM4e+gvf81Mx8pQzPm3gvDlMTCDZoVjN0s5os5WLszFVJ3UuYV+Kd9Yb1FaHvtjKXw/1cNztAM7BviMTFn5pvZFux/p5go25ErVf8rjKCzIVdwoA5GmI2yDhpNdx4uMAoQ5cux1zo85+WLLo/H4/F4PB6Px+PxeDwej8fjGRZ8B1tOYapb/7aAAAAAAElFTkSuQmCC>

[image15]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHUAAAAYCAYAAADEbrI4AAAFc0lEQVR4Xu1ZW4hVVRjeh7Eouo3ZNDSXvc5cYnAoiqYeogsYGg1dHiow8CWYByuUQIjIB+nyUPYQWqlhSkXEGPYQhCAaYfiQYE9hFMFgio2klCAqWTTT983615n//HufffbepFHtDz7O3uu/rMv/r9s+UVShQoUKFSpUKIJ6vX7Z0NDQ9XjssLIGnHNLwJPgrOLv4N7e3t5FVv9iAHVPgGdUe95GcS3I0a4+lH2v24zObhRb9ue4loG/gifk+Qx0NwwPD1/dqDAFfX19N0PvB+OH4/JGd3f3FZB9jOc/tZz6tLO+/g4wkKjjkNR1BLzB6iQApW3gDBr2gJX9E+jq6roSbdkjA3kMHLA6KFsbx/GrUUrWSn/+gPxuU34beIK+WYeWpaG/v/8O6J8D91n9kZGRq1C+HzyLesa07AKhhnavzxVUNGghlA6CPyLTeq28KFBxJyvV5LJh9bKANg3C7l3wdeezc5XVQdlbNmiEGuypgYGBbi1jYFC+D5yB7VItSwODBd2zaP8HVqZ8Xaygsj3PuzxBhcJi8BfwE7wusPKcqMH+PvAgKv4Uv1vBzeAE3h8vmiywGwefw0y5Cb+nwAODg4PXBDkTkUugDRqR1R+VwIlZnIZ/c1BXgLM0sLI8GBsbuwS26+BjU7u9Ki8wiC/KTFoAv5PObA0MHORbKJ+38kAiPML+gGusDGV3guedSZJWKBtU7IH9sHkCfAnyce7DSlzjeQWJfiNkD/b09FxHeyTovRxLpcfzwyLIHobsfra3SFDfdDkzNw2wfRTcZBtUFhwA+NsWZjeDifcZcDKSIDqfiImgEa36w0FB+efgSQT+di1rhRBUcCcHUhPtG8bvV5TroOJ5GcrOo90reajD7wt4Pxbq5Fbk/LbCw+A5rjhMUHneEPlDIVe+VeDP4BomiPPnhCnXLqjx/HKU2H/yAB27XCpLHGTKIpb9lJ3nuwTjAHiKyzHLIFtvg0ao2cPZ+JHz28BWzjT8TsPmPQ60tWsFFdTDwVcgfTl/c2gKqgRg1knScYwg3+3MYYszkHrsC2c23r8EV4uP5ZCdRn/vCfpR3oOSy9h/iNHR0UuzZiCdoyHvsFF8TiOTJcuHhZP91JQxazkAXJbz7Kd7IXe6HSFJiiAElUlhZRnLb4dcBxunckmqpmCEoPI3lBHKL88nC7UszrP8OtlPXfpSxiXg5TA70kDn4BfOZLElOnWrtW0FCVzTyRQ+GCFebb4Dl8Tt99O1VmYhd7/98HU0EHV/o++aJYNKu1Fwh/jlwfGwyxlU6ohu4hqVN6ip9zlC9oztXD6sLEA2+S228rKQgfowZYlkgr3CQQC/xiCvNPI5OL+fzsQ5rivw0Qm+5pqTbyNYDzplggrdp6Xs2UhmK+1delATCUEd0S0e1DjjfsrlUjq6QpenYG6dh69lVlAGsdlPNdT1JjUJ1f000Z+yKBpUJjnev8X7bj0ZQlCxJdziZGtpFVT2HeW76If+tCxPUMMhoGk/pYHzB4GjLscBSPYuNmKxlRUEE+RJ+NnMZyuM5q83ic4SKui70pKiDLK+KGUFVeurT3xHoHcXJwHLJaiz4Lj2KzKeoH+D7vJQhiS51vmkPc7k1/o0WArBtDgk+Q2T+xWpv2c2rhDtUPfYA9/rMBA9UXpQWgK2Tzn/STDUPV1P2Yfr/nrT1C6eEJ3P3mBL8nvvhDItBO6rzgdCjwd9zn37RT93uObv09Q7JHY86DG5GIDt4KQEkN+ffwIfqzd/O27YqibUYPOQ8zHZWfcz/TP5DTbPKP0Lhg4mDPg+KpziTJfZPmWO5v8HdHCGyik4JDgTMdckUZjzg2B28oWzv+2/NBUqVKhQoUKFChUq/KfxF3KwMVTDRkYpAAAAAElFTkSuQmCC>

[image16]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAAXCAYAAAAGAx/kAAABHUlEQVR4XmNgGAUkATk5OS15efk7QPwfCX+TlZW1BckD2ZPR5O4rKSmpoZsDB0AFlkD8E4hvA7EkTFxFRYUdyF8PtLBeXFycG1kPViAjI8MJVLwDqOmfgoKCB1SYEcgvBWEQG1k9XgA0IALq/OXGxsasUEO6QWx0tXiBoqKiOFDjdSB+D8TNQDyZZENgAKi5FeQqoOsOAQOVH12eaAA0xAsUTkB8gmyDgJo1gXgf0DW3QIYhBTpxAGQzUOMqYBiZgfjIYQVMTzro6rECqCHrgNgbWRzomgZoWDUgi2MFQIWKQIUbgbgQXQ6YpmyA8r+BcqekpaWF0eXBAKgoFqjoF8hGKP4L1OAPkwfys0BiyPJAPTuBiVYI2ZxRMKIBANPJUNHE8/bwAAAAAElFTkSuQmCC>

[image17]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAAXCAYAAADpwXTaAAAAt0lEQVR4XmNgGAWjgDpAQUGBQ05OLk1UVJQHXY4cwCgvL98KNNAYXYIsADIIaGAvkMmCLkcOYAR6twBoaByIjSIDlBAA2iRJClZSUgKaJTcfyJ6soqLCBzZIXFycGyhQDcSzSMVAw3YA6a9A3Aw0kB3FhaQAWVlZE6Ahq6WlpWXQ5UgCQAOEgQYtVlRUlEeXIxkADcoChnMEujjJAJRogYZNlZGRkUaXIwcwqqur84JodIlRMMAAAJV7J+RoCL8jAAAAAElFTkSuQmCC>