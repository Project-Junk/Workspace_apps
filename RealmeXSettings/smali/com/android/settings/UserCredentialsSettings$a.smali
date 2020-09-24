.class final Lcom/android/settings/UserCredentialsSettings$a;
.super Landroid/os/AsyncTask;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/settings/UserCredentialsSettings$b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/UserCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/UserCredentialsSettings;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$a;->a:Lcom/android/settings/UserCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/UserCredentialsSettings;B)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/android/settings/UserCredentialsSettings$a;-><init>(Lcom/android/settings/UserCredentialsSettings;)V

    return-void
.end method

.method private static a(Landroid/security/KeyStore;I)Ljava/util/SortedMap;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "I)",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/UserCredentialsSettings$b;",
            ">;"
        }
    .end annotation

    move/from16 v7, p1

    .line 302
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 303
    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$b$a;->values()[Lcom/android/settings/UserCredentialsSettings$b$a;

    move-result-object v9

    array-length v10, v9

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_b

    aget-object v13, v9, v12

    .line 304
    iget-object v14, v13, Lcom/android/settings/UserCredentialsSettings$b$a;->d:[Ljava/lang/String;

    array-length v15, v14

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v15, :cond_a

    aget-object v5, v14, v6

    move-object/from16 v4, p0

    .line 305
    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_9

    aget-object v11, v3, v1

    .line 306
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    move/from16 v16, v1

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    const-string v0, "profile_key_name_encrypt_"

    .line 308
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "profile_key_name_decrypt_"

    .line 309
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "synthetic_password_"

    .line 313
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object v2, v5

    move/from16 v17, v6

    goto/16 :goto_7

    .line 318
    :cond_1
    :goto_3
    :try_start_0
    sget-object v0, Lcom/android/settings/UserCredentialsSettings$b$a;->c:Lcom/android/settings/UserCredentialsSettings$b$a;

    if-ne v13, v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1284
    new-instance v1, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v1}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move/from16 v20, v2

    move-object v2, v0

    move-object/from16 v21, v3

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v22, v5

    move/from16 v5, p1

    move/from16 v17, v6

    move-object/from16 v6, v19

    .line 1285
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const v0, 0x10000002

    move-object/from16 v2, v19

    .line 1292
    invoke-virtual {v2, v0}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1297
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 1298
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_4

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_4
    if-nez v1, :cond_7

    goto :goto_5

    .line 1295
    :cond_4
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "Key algorithm unknown"

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1288
    :cond_5
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "Failed to obtain information about key"

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 1290
    invoke-static {v0}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/security/UnrecoverableKeyException;

    throw v0
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_6
    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    move/from16 v17, v6

    .line 326
    :cond_7
    invoke-interface {v8, v11}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$b;

    if-nez v0, :cond_8

    .line 328
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$b;

    invoke-direct {v0, v11, v7}, Lcom/android/settings/UserCredentialsSettings$b;-><init>(Ljava/lang/String;I)V

    .line 329
    invoke-interface {v8, v11, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_8
    iget-object v0, v0, Lcom/android/settings/UserCredentialsSettings$b;->c:Ljava/util/EnumSet;

    invoke-virtual {v0, v13}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_5
    move-object/from16 v2, v22

    goto :goto_7

    :catch_1
    move-exception v0

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    move/from16 v17, v6

    .line 323
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to determine algorithm of key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UserCredentialsSettings"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    add-int/lit8 v1, v16, 0x1

    move-object/from16 v4, p0

    move-object v5, v2

    move/from16 v6, v17

    move/from16 v2, v20

    move-object/from16 v3, v21

    goto/16 :goto_2

    :cond_9
    move/from16 v17, v6

    add-int/lit8 v6, v17, 0x1

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_b
    return-object v8
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 2269
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    .line 2272
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x3e8

    .line 2273
    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    const/16 v2, 0x3f2

    .line 2274
    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 2276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2277
    invoke-static {p1, v1}, Lcom/android/settings/UserCredentialsSettings$a;->a(Landroid/security/KeyStore;I)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2278
    invoke-static {p1, v0}, Lcom/android/settings/UserCredentialsSettings$a;->a(Landroid/security/KeyStore;I)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 259
    check-cast p1, Ljava/util/List;

    .line 1340
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$a;->a:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1344
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1350
    :cond_0
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$a;->a:Lcom/android/settings/UserCredentialsSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/UserCredentialsSettings;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 1346
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$a;->a:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f121807

    .line 1347
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1348
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$a;->a:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/UserCredentialsSettings;->setEmptyView(Landroid/view/View;)V

    .line 1353
    :goto_1
    iget-object v0, p0, Lcom/android/settings/UserCredentialsSettings$a;->a:Lcom/android/settings/UserCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/UserCredentialsSettings$c;

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$a;->a:Lcom/android/settings/UserCredentialsSettings;

    invoke-direct {v1, p1, v2}, Lcom/android/settings/UserCredentialsSettings$c;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    return-void
.end method
