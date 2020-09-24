.class final Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;
.super Ljava/lang/Object;
.source "ColorDeviceAdminSettings.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/app/admin/DeviceAdminInfo;

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 92
    check-cast p1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;

    .line 1102
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;->c:Z

    iget-boolean v1, p1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;->c:Z

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
