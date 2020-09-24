.class public Lcom/coloros/partners/dirac/activity/AbsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AbsActivity.java"


# instance fields
.field protected a:Lcom/oppo/a/a/a/c;

.field protected b:Lcom/oppo/a/a/a/a;

.field protected c:Landroid/content/ServiceConnection;

.field private d:[Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 63
    new-instance v0, Lcom/coloros/partners/dirac/activity/AbsActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/activity/AbsActivity$1;-><init>(Lcom/coloros/partners/dirac/activity/AbsActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->b:Lcom/oppo/a/a/a/a;

    .line 75
    new-instance v0, Lcom/coloros/partners/dirac/activity/AbsActivity$2;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dirac/activity/AbsActivity$2;-><init>(Lcom/coloros/partners/dirac/activity/AbsActivity;)V

    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->c:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->e:Z

    return-void
.end method

.method public static a([F)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_2

    .line 259
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 265
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v3, ";"

    .line 266
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)[F
    .locals 3

    .line 272
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ";"

    .line 276
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 277
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 278
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 279
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected static g()Z
    .locals 3

    .line 238
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const-string v1, "AbsActivity"

    if-nez v0, :cond_0

    const-string v0, "isWirelessBluetoothDeviceConnected() bluetooth adapter is null"

    .line 240
    invoke-static {v1, v0}, Lcom/coloros/partners/dirac/a/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 243
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "isWirelessBluetoothDeviceConnected() A2DP wireless bluetooth device is connected"

    .line 245
    invoke-static {v1, v0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    const v0, 0x7f0a070a

    .line 103
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    const v1, 0x7f1201d1

    .line 104
    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 107
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 109
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "dirac_effect_mode"

    .line 376
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oppo/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 377
    invoke-static {p0, p1, v0}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "AbsActivity"

    const-string v1, "setEffectSceneMode:"

    .line 379
    invoke-static {v0, v1, p1}, Lcom/coloros/partners/dirac/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method protected a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 171
    invoke-static {p2}, Lcom/oppo/a/a/a/c$a;->a(Landroid/os/IBinder;)Lcom/oppo/a/a/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    .line 172
    iget-object p1, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz p1, :cond_0

    .line 174
    :try_start_0
    iget-object p2, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->b:Lcom/oppo/a/a/a/a;

    invoke-interface {p1, p2}, Lcom/oppo/a/a/a/c;->a(Lcom/oppo/a/a/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error occur, e = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AbsActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final a(Lcom/oppo/a/a/a/b$a;)V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p1}, Lcom/oppo/a/a/a/b$a;->ordinal()I

    move-result p1

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    const-string v1, "dirac_scene_mode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/oppo/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "AbsActivity"

    const-string v1, "setEffectSceneMode:"

    .line 347
    invoke-static {v0, v1, p1}, Lcom/coloros/partners/dirac/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 0

    return-void
.end method

.method public final varargs a([I)V
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->m()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    invoke-static {v0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->a(Ljava/lang/String;)[F

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    array-length v1, v0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 413
    aget v1, p1, v1

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 414
    aget v1, p1, v3

    int-to-float v1, v1

    aput v1, v0, v2

    const/4 v1, 0x5

    const/4 v2, 0x2

    .line 415
    aget p1, p1, v2

    int-to-float p1, p1

    aput p1, v0, v1

    .line 416
    invoke-static {v0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->a([F)Ljava/lang/String;

    move-result-object p1

    .line 417
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/AbsActivity;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 183
    invoke-static {}, Lcom/coloros/settings/utils/bh;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void

    .line 186
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final varargs b([I)Ljava/lang/String;
    .locals 4

    .line 424
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->m()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 426
    invoke-static {v0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->a(Ljava/lang/String;)[F

    move-result-object v1

    if-eqz v1, :cond_1

    .line 427
    array-length v2, v1

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    const/4 v3, 0x7

    if-lt v2, v3, :cond_1

    const/4 v0, 0x0

    .line 429
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 430
    aget v2, p1, v0

    int-to-float v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_0
    invoke-static {v1}, Lcom/coloros/partners/dirac/activity/AbsActivity;->a([F)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected final b()V
    .locals 5

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bindEffectService, mService="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsActivity"

    invoke-static {v1, v0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 134
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.oppo.diraceffect.controlservice.START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 135
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 141
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 142
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 143
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 145
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 147
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v4}, Lcom/coloros/partners/dirac/activity/AbsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_1
    :goto_0
    const-string v0, "bindEffectService, return not found receiver."

    .line 137
    invoke-static {v1, v0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 474
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "dirac_eq_values"

    .line 479
    invoke-interface {v0, v1, p1}, Lcom/oppo/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "AbsActivity"

    const-string v1, "setEqBands:"

    .line 481
    invoke-static {v0, v1, p1}, Lcom/coloros/partners/dirac/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 285
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setEqEnabled, isEnabled="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsActivity"

    invoke-static {v1, v0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    const-string v1, "dirac_eq_enable"

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-interface {v0, v1, p1}, Lcom/oppo/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 295
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setEffectEbabled, isChecked="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsActivity"

    invoke-static {v1, v0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-interface {v0, p1}, Lcom/oppo/a/a/a/c;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final varargs c([I)V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->m()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 444
    invoke-static {v0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->a(Ljava/lang/String;)[F

    move-result-object v0

    if-eqz v0, :cond_1

    .line 445
    array-length v1, v0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 447
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 448
    aget v2, p1, v1

    int-to-float v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    :cond_0
    invoke-static {v0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->a([F)Ljava/lang/String;

    move-result-object p1

    .line 451
    invoke-virtual {p0, p1}, Lcom/coloros/partners/dirac/activity/AbsActivity;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected final d()Z
    .locals 2

    .line 204
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->j()Lcom/oppo/a/a/a/b$a;

    move-result-object v0

    sget-object v1, Lcom/oppo/a/a/a/b$a;->a:Lcom/oppo/a/a/a/b$a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()Z
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->j()Lcom/oppo/a/a/a/b$a;

    move-result-object v0

    sget-object v1, Lcom/oppo/a/a/a/b$a;->b:Lcom/oppo/a/a/a/b$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final f()Z
    .locals 1

    const-string v0, "audio"

    .line 218
    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Z
    .locals 1

    .line 255
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/partners/dirac/activity/AbsActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Z
    .locals 4

    const-string v0, "AbsActivity"

    const-string v1, "getEffectEnabled, sceneMode="

    .line 305
    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 308
    :try_start_0
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-interface {v2}, Lcom/oppo/a/a/a/c;->a()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "getEffectEnabled:"

    .line 312
    invoke-static {v0, v3, v2}, Lcom/coloros/partners/dirac/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v1
.end method

.method public final j()Lcom/oppo/a/a/a/b$a;
    .locals 4

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getEffectSceneMode, mService="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsActivity"

    invoke-static {v1, v0}, Lcom/coloros/partners/dirac/a/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    if-nez v0, :cond_0

    .line 320
    sget-object v0, Lcom/oppo/a/a/a/b$a;->b:Lcom/oppo/a/a/a/b$a;

    return-object v0

    .line 323
    :cond_0
    sget-object v0, Lcom/oppo/a/a/a/b$a;->b:Lcom/oppo/a/a/a/b$a;

    invoke-virtual {v0}, Lcom/oppo/a/a/a/b$a;->ordinal()I

    move-result v0

    .line 325
    :try_start_0
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    const-string v3, "dirac_scene_mode"

    invoke-interface {v2, v3}, Lcom/oppo/a/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "getEffectSceneMode:"

    .line 327
    invoke-static {v1, v3, v2}, Lcom/coloros/partners/dirac/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getEffectSceneMode, index = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_1

    .line 331
    invoke-static {}, Lcom/oppo/a/a/a/b$a;->values()[Lcom/oppo/a/a/a/b$a;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 332
    :cond_1
    sget-object v0, Lcom/oppo/a/a/a/b$a;->b:Lcom/oppo/a/a/a/b$a;

    invoke-virtual {v0}, Lcom/oppo/a/a/a/b$a;->ordinal()I

    move-result v0

    .line 334
    :cond_2
    invoke-static {}, Lcom/oppo/a/a/a/b$a;->values()[Lcom/oppo/a/a/a/b$a;

    move-result-object v2

    aget-object v0, v2, v0

    .line 335
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getEffectSceneMode, sceneMode="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final k()I
    .locals 6

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getEffectSceneMode, mService="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsActivity"

    invoke-static {v1, v0}, Lcom/coloros/partners/dirac/a/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    :try_start_0
    const-string v3, "dirac_effect_mode"

    .line 359
    invoke-interface {v0, v3}, Lcom/oppo/a/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    .line 360
    :try_start_1
    invoke-static {v3}, Lcom/coloros/partners/dirac/a/d;->a(Z)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v4, v3

    if-le v0, v4, :cond_3

    .line 361
    :cond_1
    invoke-static {p0, v3}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Z)I

    move-result v0

    if-ltz v0, :cond_2

    .line 362
    invoke-static {v3}, Lcom/coloros/partners/dirac/a/d;->a(Z)[Ljava/lang/String;

    move-result-object v4

    array-length v1, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_3

    :cond_2
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v0

    move v5, v2

    move-object v2, v0

    move v0, v5

    :goto_0
    const-string v3, "getEffectModeIndex:"

    .line 367
    invoke-static {v1, v3, v2}, Lcom/coloros/partners/dirac/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 4

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getEffectModeName, isWiredHeadsetOn()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", EffectSceneMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->j()Lcom/oppo/a/a/a/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsActivity"

    invoke-static {v1, v0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {}, Lcom/coloros/settings/utils/bh;->H()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    goto :goto_1

    .line 395
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->j()Lcom/oppo/a/a/a/b$a;

    move-result-object v0

    sget-object v3, Lcom/oppo/a/a/a/b$a;->c:Lcom/oppo/a/a/a/b$a;

    if-ne v0, v3, :cond_3

    .line 396
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->d:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    goto :goto_1

    .line 398
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->d:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 402
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "currenteffectname= "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 4

    const-string v0, "AbsActivity"

    .line 459
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v3, "dirac_eq_values"

    .line 465
    invoke-interface {v1, v3}, Lcom/oppo/a/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "getEqBands:"

    .line 467
    invoke-static {v0, v3, v1}, Lcom/coloros/partners/dirac/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getEqBands, array="

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oppo.multimedia.dirac.a2dp.support"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->e:Z

    .line 97
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->b()V

    .line 98
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030078

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->d:[Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "AbsActivity"

    const-string v1, "onDestroy"

    .line 198
    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 1151
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unBindEffectService, mService="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v1, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    if-eqz v1, :cond_0

    .line 1154
    :try_start_0
    iget-object v2, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->b:Lcom/oppo/a/a/a/a;

    invoke-interface {v1, v2}, Lcom/oppo/a/a/a/c;->b(Lcom/oppo/a/a/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1156
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :goto_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 1159
    iput-object v0, p0, Lcom/coloros/partners/dirac/activity/AbsActivity;->a:Lcom/oppo/a/a/a/c;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 128
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->finish()V

    const p1, 0x7f010062

    const v0, 0x7f010063

    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/coloros/partners/dirac/activity/AbsActivity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1
.end method
