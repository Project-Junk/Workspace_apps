.class final Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;
.super Landroid/os/AsyncTask;
.source "LocationGPSPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/location/LocationGPSPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;B)V
    .locals 0

    .line 297
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;-><init>(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->b(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->b(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "gps_location"

    invoke-static {v1, v2}, Lcom/coloros/settings/utils/y;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 309
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->b(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {v2}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->b(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1080093

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/settings/utils/af;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 310
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->c(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/a/b;

    .line 311
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {v2}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->d(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 312
    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {v2}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->d(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Ljava/util/HashMap;

    iget-object v1, v1, Lcom/coloros/settings/feature/a/b;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 318
    :goto_1
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {v1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Landroid/location/LocationManager;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {v3}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->e(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Lcom/color/compat/location/LocAppsOpNative;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/color/compat/location/LocationManagerNative;->getLocAppsOp(Landroid/location/LocationManager;ILcom/color/compat/location/LocAppsOpNative;)V

    .line 320
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {v1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {v2}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->f(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Lcom/color/compat/location/LocAppsOpNative;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/color/compat/location/LocationManagerNative;->getLocAppsOp(Landroid/location/LocationManager;ILcom/color/compat/location/LocAppsOpNative;)V

    .line 322
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {v1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->f(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Lcom/color/compat/location/LocAppsOpNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/color/compat/location/LocAppsOpNative;->getAppsOp()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {v1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->f(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Lcom/color/compat/location/LocAppsOpNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/color/compat/location/LocAppsOpNative;->getAppsOp()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_3

    goto :goto_2

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->g(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)V

    .line 340
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_4
    :goto_2
    const/4 v1, 0x6

    if-le v0, v1, :cond_5

    .line 324
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    const-wide/16 v1, 0x1388

    .line 328
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 330
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 302
    :cond_6
    :goto_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 297
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final onCancelled()V
    .locals 0

    .line 355
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 297
    check-cast p1, Ljava/lang/Boolean;

    .line 1345
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1346
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1347
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->h(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)V

    .line 1348
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->i(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)V

    .line 1349
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$b;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->j(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)V

    :cond_0
    return-void
.end method
