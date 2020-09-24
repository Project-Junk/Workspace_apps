.class final Lcom/coloros/settings/feature/security/location/LocationGPSPermission$1;
.super Ljava/lang/Object;
.source "LocationGPSPermission.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;

.field final synthetic b:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$1;->b:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    iput-object p2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$1;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 188
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 189
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$1;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;

    iget v2, v1, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;->b:I

    and-int/lit16 v2, v2, 0xf8

    or-int/2addr p1, v2

    iput p1, v1, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;->b:I

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onPreferenceChange app.op = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$1;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;

    iget v1, v1, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;->b:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LocationGPSPermission"

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance p1, Lcom/color/compat/location/LocAppsOpNative;

    invoke-direct {p1}, Lcom/color/compat/location/LocAppsOpNative;-><init>()V

    .line 192
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$1;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;

    iget-object v1, v1, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;->a:Lcom/coloros/settings/feature/a/b;

    iget-object v1, v1, Lcom/coloros/settings/feature/a/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$1;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;

    iget v2, v2, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;->b:I

    invoke-virtual {p1, v1, v2}, Lcom/color/compat/location/LocAppsOpNative;->setAppOp(Ljava/lang/String;I)V

    .line 193
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$1;->b:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-static {v1}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/color/compat/location/LocationManagerNative;->setLocAppsOp(Landroid/location/LocationManager;ILcom/color/compat/location/LocAppsOpNative;)V

    .line 194
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$1;->b:Lcom/coloros/settings/feature/security/location/LocationGPSPermission;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$1;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;

    iget-object v1, v1, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;->a:Lcom/coloros/settings/feature/a/b;

    iget-object v1, v1, Lcom/coloros/settings/feature/a/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$1;->a:Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;

    iget v2, v2, Lcom/coloros/settings/feature/security/location/LocationGPSPermission$a;->b:I

    invoke-static {p1, p2, v1, v2}, Lcom/coloros/settings/feature/security/location/LocationGPSPermission;->a(Lcom/coloros/settings/feature/security/location/LocationGPSPermission;ZLjava/lang/String;I)V

    return v0
.end method
