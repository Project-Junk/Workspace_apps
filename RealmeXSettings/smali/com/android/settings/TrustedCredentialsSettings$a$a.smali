.class public Lcom/android/settings/TrustedCredentialsSettings$a$a;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/util/SparseArray<",
        "Ljava/util/List<",
        "Lcom/android/settings/TrustedCredentialsSettings$c;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field final synthetic b:Lcom/android/settings/TrustedCredentialsSettings$a;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settings/TrustedCredentialsSettings$a;)V
    .locals 4

    .line 700
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 701
    iget-object v0, p1, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->d:Landroid/content/Context;

    .line 702
    iget-object v0, p1, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 703
    iget-object v0, p1, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings;->a:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 704
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 705
    iget-object v2, p1, Lcom/android/settings/TrustedCredentialsSettings$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/os/UserHandle;)Z
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings;->a:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings;->a:Landroid/os/UserManager;

    .line 711
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private varargs b()Landroid/util/SparseArray;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$c;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 722
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 725
    :try_start_0
    iget-object v2, v1, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v2, v2, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsSettings;->b(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :try_start_1
    iget-object v3, v1, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v3, v3, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v3, v3, Lcom/android/settings/TrustedCredentialsSettings;->a:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    .line 727
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 730
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5, v4}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v4, :cond_2

    .line 735
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    .line 736
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 737
    invoke-direct {v1, v9}, Lcom/android/settings/TrustedCredentialsSettings$a$a;->a(Landroid/os/UserHandle;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 740
    iget-object v11, v1, Lcom/android/settings/TrustedCredentialsSettings$a$a;->d:Landroid/content/Context;

    invoke-static {v11, v9}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v9

    .line 743
    iget-object v11, v1, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v11, v11, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v11}, Lcom/android/settings/TrustedCredentialsSettings;->b(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 744
    invoke-virtual {v9}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v9

    .line 745
    iget-object v11, v1, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v11, v11, Lcom/android/settings/TrustedCredentialsSettings$a;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    invoke-static {v11, v9}, Lcom/android/settings/TrustedCredentialsSettings$f;->a(Lcom/android/settings/TrustedCredentialsSettings$f;Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v9

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings$a$a;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 747
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    monitor-exit v2

    return-object v0

    .line 749
    :cond_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v8, v11

    .line 750
    invoke-virtual {v5, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v7, v4, :cond_7

    .line 753
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserHandle;

    .line 754
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .line 755
    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Ljava/util/List;

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TrustedCredentialsSettings$a$a;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 757
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    monitor-exit v2

    return-object v0

    .line 759
    :cond_3
    iget-object v11, v1, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v11, v11, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v11}, Lcom/android/settings/TrustedCredentialsSettings;->b(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/security/KeyChain$KeyChainConnection;

    .line 761
    invoke-direct {v1, v10}, Lcom/android/settings/TrustedCredentialsSettings$a$a;->a(Landroid/os/UserHandle;)Z

    move-result v10

    if-nez v10, :cond_6

    if-eqz v14, :cond_6

    if-nez v11, :cond_4

    goto/16 :goto_3

    .line 766
    :cond_4
    invoke-virtual {v11}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v10

    .line 767
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 768
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    move/from16 v19, v9

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v12, :cond_5

    .line 770
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v6, 0x1

    .line 771
    invoke-interface {v10, v11, v6}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v16

    .line 773
    invoke-static/range {v16 .. v16}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v16

    .line 774
    new-instance v6, Lcom/android/settings/TrustedCredentialsSettings$c;

    move-object/from16 v20, v3

    iget-object v3, v1, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v3, v3, Lcom/android/settings/TrustedCredentialsSettings$a;->c:Lcom/android/settings/TrustedCredentialsSettings$e;

    move/from16 v21, v4

    iget-object v4, v1, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v4, v4, Lcom/android/settings/TrustedCredentialsSettings$a;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    const/16 v18, 0x0

    move-object/from16 v17, v11

    move-object v11, v6

    move/from16 v22, v12

    move-object v12, v10

    move-object/from16 v23, v5

    move-object v5, v13

    move-object v13, v3

    move-object v3, v14

    move-object v14, v4

    move v4, v15

    move-object/from16 v15, v17

    move/from16 v17, v4

    invoke-direct/range {v11 .. v18}, Lcom/android/settings/TrustedCredentialsSettings$c;-><init>(Landroid/security/IKeyChainService;Lcom/android/settings/TrustedCredentialsSettings$e;Lcom/android/settings/TrustedCredentialsSettings$f;Ljava/lang/String;Ljava/security/cert/X509Certificate;IB)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x2

    .line 776
    new-array v6, v6, [Ljava/lang/Integer;

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v6, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v6, v12

    invoke-virtual {v1, v6}, Lcom/android/settings/TrustedCredentialsSettings$a$a;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    move-object v14, v3

    move v15, v4

    move-object v13, v5

    move-object/from16 v3, v20

    move/from16 v4, v21

    move/from16 v12, v22

    move-object/from16 v5, v23

    goto :goto_2

    :cond_5
    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v23, v5

    move-object v5, v13

    move v4, v15

    .line 778
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 779
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v9, v19

    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v23, v5

    move v4, v15

    .line 763
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v20

    move/from16 v4, v21

    move-object/from16 v5, v23

    goto/16 :goto_1

    .line 781
    :cond_7
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    .line 782
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "TrustedCredentialsSettings"

    const-string v3, "InterruptedException while loading aliases."

    .line 787
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0

    :catch_1
    move-exception v0

    const-string v2, "TrustedCredentialsSettings"

    const-string v3, "Remote exception while loading aliases."

    .line 784
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method private c()Z
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->c(Lcom/android/settings/TrustedCredentialsSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$a;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    sget-object v1, Lcom/android/settings/TrustedCredentialsSettings$f;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .line 819
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$a$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$a;->a:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    iget v1, v1, Lcom/android/settings/TrustedCredentialsSettings;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 827
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 828
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->d:Landroid/content/Context;

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 830
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/TrustedCredentialsSettings$c;

    if-eqz v3, :cond_2

    .line 831
    invoke-static {v3}, Lcom/android/settings/TrustedCredentialsSettings$c;->a(Lcom/android/settings/TrustedCredentialsSettings$c;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v5, v5, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    iget v5, v5, Lcom/android/settings/TrustedCredentialsSettings;->b:I

    invoke-virtual {v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 832
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 836
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no cert is pending approval for user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    iget v1, v1, Lcom/android/settings/TrustedCredentialsSettings;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustedCredentialsSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 840
    :cond_4
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings;Ljava/util/List;)V

    return-void
.end method

.method protected a(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/TrustedCredentialsSettings$c;",
            ">;>;)V"
        }
    .end annotation

    .line 800
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 801
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 803
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v3, v3, Lcom/android/settings/TrustedCredentialsSettings$a;->a:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 805
    :cond_0
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsSettings$a;->c:Lcom/android/settings/TrustedCredentialsSettings$e;

    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsSettings$e;->notifyDataSetChanged()V

    .line 806
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->c:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 807
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 808
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 809
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsSettings;->f:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 810
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$a$a;->a()V

    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x0

    .line 792
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    .line 793
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 794
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 795
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 797
    :cond_0
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 695
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b()Landroid/util/SparseArray;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 695
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$a$a;->a(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 715
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$a;->d:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 716
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings$a;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    iget v1, v1, Lcom/android/settings/TrustedCredentialsSettings$f;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->c:Landroid/widget/ProgressBar;

    .line 717
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->b:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings$a;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    iget v1, v1, Lcom/android/settings/TrustedCredentialsSettings$f;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->a:Landroid/view/View;

    .line 718
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$a$a;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 695
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$a$a;->a([Ljava/lang/Integer;)V

    return-void
.end method
