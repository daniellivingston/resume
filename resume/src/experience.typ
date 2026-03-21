#import "../meta/templating.typ": *

// ---------- WORK EXPERIENCE ----------
#section-heading("Work Experience")

#resume-subheading-list[
  // == AMD ===============
  #resume-subheading(
    "Senior Software Development Engineer", "Jan. 2022 -- Present",
    "Advanced Micro Devices, Inc. -- GPU Technologies & Engineering", "Boxborough, MA",
  )
  #resume-item-list(
    [*Key contributor to the creation of Radeon GPU Detective (RGD)* by spearheading the design and development of DirectX 12 and Vulkan driver components and collaborating with cross-functional teams on the overall project. Adopted by major video game studios to resolve GPU crashes in over six AAA titles, earning internal recognition with an "Executive Spotlight" award.],
    [*Architected and led the development of a new GPU profiling and tracing system*, replacing a rigid legacy setup with a centralized, modular, cross-driver solution (DX12, Vulkan, OpenGL, OpenCL, HIP, ROCm) for Windows and Linux. Guided and collaborated with a small team, alongside cross-functional partners, to build a system that is highly extensible and robust. Developed an extensive Google Test suite for rigorous validation of system integrity.],
    [*Improved driver developer productivity* by developing internal tooling for deploying and managing AMD graphics & compute drivers],
  )

  // == LANL ==============
  #resume-subheading(
    "Research Technologist", "Mar. 2017 -- Dec. 2021",
    "Los Alamos National Laboratory -- Computational Earth Science group (EES-16)", "Los Alamos, NM",
  )
  #resume-item-list(
    [Project lead and primary developer on _TINerator_, an open-source *Python* module for generating multi-scale geologic *3D polygonal meshes* from *GIS* & *geospatial* data for use in flow and transport simulation codes -- widely used across U.S. D.O.E. national laboratories and presented in numerous conferences, lectures, and journals],
    [Reduced model setup and analysis time by \~70% by developing an *award-winning program* for interactive *2D* & *3D visualization* + *analysis* of geospatial data],
    [Project lead and primary developer on _VORONOI_, an open-source *Fortran90* application for *MPI*-based "embarrassingly parallel" generation of Voronoi tessellations from polygonal meshes, formatted for use in various multi-physics numerical models -- presented at several conferences and has national & international users],
    [Reduced computation time by >100x by leading development on an internal *Julia* module containing a *novel algorithm* for parallel computation of fire spread behavior from geospatial data],
    [Reduced mesh generation time by \~40% by designing high-performing *algorithms* in *C, C++, and Fortran* for polygonal mesh attribute interpolation & dynamic sub-mesh querying and extraction],
  )

  // == ASU ===============
  #resume-subheading(
    "Graduate Research Assistant", "Jun. 2015 -- Dec. 2015",
    "Arizona State University -- School of Earth & Space Exploration (SESE)", "Tempe, AZ",
  )
  #resume-item-list(
    [Developed an *Artificial Neural Network* which, when deployed on a cluster of drones acting as a "mesh network", finds and directs the drones to the optimal spatial configuration for maximum network coverage],
    [Reduced neural network training & execution time by \~70% by implementing *shared-memory parallelization* with *OpenMP*],
  )
]
