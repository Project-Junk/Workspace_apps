.class Lcom/android/systemui/statusbar/phone/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AppInfo;->mComponentName:Landroid/content/ComponentName;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AppInfo;->mUser:Landroid/os/UserHandle;

    return-void

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 51
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/AppInfo;

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AppInfo;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/AppInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AppInfo;->mUser:Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/AppInfo;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AppInfo;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AppInfo;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method
