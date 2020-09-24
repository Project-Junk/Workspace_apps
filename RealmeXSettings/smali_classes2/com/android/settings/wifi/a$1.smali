.class final Lcom/android/settings/wifi/a$1;
.super Ljava/lang/Object;
.source "AppStateChangeWifiStateBridge.java"

# interfaces
.implements Lcom/coloros/settingslib/applications/ApplicationsState$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 86
    iget-object v1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/wifi/a$a;

    .line 90
    iget-object v1, p1, Lcom/android/settings/wifi/a$a;->c:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p1, Lcom/android/settings/wifi/a$a;->c:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v2, "android.permission.NETWORK_SETTINGS"

    .line 93
    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 101
    :cond_1
    iget-boolean p1, p1, Lcom/android/settings/wifi/a$a;->e:Z

    return p1

    :cond_2
    :goto_0
    return v0
.end method
