-- ## Employees
-- - 1: Paul Clark, SVP, Tech
-- - 2: Travis Pitts, Manager, Tech
-- - 3: Jessica Smithe, Intern, Tech
-- - 4: Susan Jones, SVP, MKT
-- - 5: Kelsey Bowman, JVP, MKT
-- - 6: Jason Masongill, Manager, MKT

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
('Paul', 'Clarke', 1, 1),
('Travis', 'Pitts', 4, 1),
('Jessica', 'Smithe', 7, 1),
('Susan', 'Jones', 1, 4),
('Kelsey', 'Bowman', 2, 4),
('Jason', 'Masongill', 4, 4),
('Ronald', 'Firbank', 6, 2),
('Virginia', 'Woolf', 6, 2),
('Piers', 'Gaveston', 6, 2),
('Charles', 'LeRoi', 6, 6),
('Katherine', 'Mansfield', 6, 6),
('Dora', 'Carrington', 6, 6),
('Edward', 'Bellamy', 6, 6),
('Montague', 'Summers', 7, 4),
('Octavia', 'Butler', 7, 4),
('Unica', 'Zurn', 7, 4);

-- ## Roles
-- - 1: SVP $90K
-- - 2: JVP $80K
-- - 3: AVP $70K
-- - 4: Manager $60K
-- - 5: AsntMngr $50K
-- - 6: Specialist $40K
-- - 7: Intern $30K

INSERT INTO role (title, salary, department_id)
VALUES
('SVP', 90000, 1),
('JVP', 80000, 1),
('AVP', 70000, 1),
('Manager', 60000, 1),
('AsntMngr', 50000, 1),
('Specialist', 40000, 1),
('Intern', 30000, 1),
('SVP', 90000, 2),
('JVP', 80000, 2),
('AVP', 70000, 2),
('Manager', 60000, 2),
('AsntMngr', 50000, 2),
('Specialist', 40000, 2),
('Intern', 30000, 2),
('SVP', 90000, 3),
('JVP', 80000, 3),
('AVP', 70000, 3),
('Manager', 60000, 3),
('AsntMngr', 50000, 3),
('Specialist', 40000, 3),
('Intern', 30000, 3),
('SVP', 90000, 4),
('JVP', 80000, 4),
('AVP', 70000, 4),
('Manager', 60000, 4),
('AsntMngr', 50000, 4),
('Specialist', 40000, 4),
('Intern', 30000, 4),
('SVP', 90000, 5),
('JVP', 80000, 5),
('AVP', 70000, 5),
('Manager', 60000, 5),
('AsntMngr', 50000, 5),
('Specialist', 40000, 5),
('Intern', 30000, 5);


-- ## Departments
-- - 1: MKT
-- - 2: Tech
-- - 3: BPS
-- - 4: PM
-- - 5: HR