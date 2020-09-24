.class final Lcom/coloros/settings/feature/appmanager/d$b;
.super Lcom/coloros/settingslib/applications/ApplicationsState$g;
.source "ColorApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/appmanager/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/appmanager/d;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/appmanager/d;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/d$b;->a:Lcom/coloros/settings/feature/appmanager/d;

    invoke-direct {p0, p1}, Lcom/coloros/settingslib/applications/ApplicationsState$g;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/appmanager/d;B)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/appmanager/d$b;-><init>(Lcom/coloros/settings/feature/appmanager/d;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 245
    invoke-super {p0}, Lcom/coloros/settingslib/applications/ApplicationsState$g;->a()V

    .line 247
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oppo.intent.action.MULTI_APP_PACKAGE_ADDED"

    .line 248
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "oppo.intent.action.MULTI_APP_PACKAGE_REMOVED"

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/d$b;->a:Lcom/coloros/settings/feature/appmanager/d;

    invoke-static {v1}, Lcom/coloros/settings/feature/appmanager/d;->a(Lcom/coloros/settings/feature/appmanager/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 252
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oppo.intent.action.MULTI_APP_RENAME"

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/d$b;->a:Lcom/coloros/settings/feature/appmanager/d;

    invoke-static {v1}, Lcom/coloros/settings/feature/appmanager/d;->b(Lcom/coloros/settings/feature/appmanager/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 259
    invoke-super {p0, p1, p2}, Lcom/coloros/settingslib/applications/ApplicationsState$g;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 263
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 265
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 266
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/d$b;->a:Lcom/coloros/settings/feature/appmanager/d;

    invoke-virtual {p2, p1, v1}, Lcom/coloros/settings/feature/appmanager/d;->a(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 267
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 269
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 270
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/d$b;->a:Lcom/coloros/settings/feature/appmanager/d;

    invoke-virtual {p2, p1, v1}, Lcom/coloros/settings/feature/appmanager/d;->b(Ljava/lang/String;Z)V

    return-void

    :cond_1
    const-string v0, "oppo.intent.action.MULTI_APP_PACKAGE_ADDED"

    .line 271
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 274
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/d$b;->a:Lcom/coloros/settings/feature/appmanager/d;

    invoke-virtual {p2, p1, v1}, Lcom/coloros/settings/feature/appmanager/d;->a(Ljava/lang/String;Z)V

    .line 275
    invoke-static {}, Lcom/coloros/settings/feature/appmanager/d;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackageIntentReceiver ACTION_MULTI_APP_ADDED pkgName="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "oppo.intent.action.MULTI_APP_PACKAGE_REMOVED"

    .line 276
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 279
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/d$b;->a:Lcom/coloros/settings/feature/appmanager/d;

    invoke-virtual {p2, p1, v1}, Lcom/coloros/settings/feature/appmanager/d;->b(Ljava/lang/String;Z)V

    .line 280
    invoke-static {}, Lcom/coloros/settings/feature/appmanager/d;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackageIntentReceiver ACTION_MULTI_APP_REMOVED pkgName="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "oppo.intent.action.MULTI_APP_RENAME"

    .line 281
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "pkg"

    .line 282
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 284
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/d$b;->a:Lcom/coloros/settings/feature/appmanager/d;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/feature/appmanager/d;->a(Ljava/lang/String;)V

    .line 286
    :cond_4
    invoke-static {}, Lcom/coloros/settings/feature/appmanager/d;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PackageIntentReceiver ACTION_MULTI_APP_RENAME pkgName="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
