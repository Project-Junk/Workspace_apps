.class public Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;
.super Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;
.source "VirtualKeyController.java"

# interfaces
.implements Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController<",
        "Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;",
        ">;",
        "Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;"
    }
.end annotation


# static fields
.field public static final KEY_EVENT_LONG_PRESS_TIMEOUT:I = 0x2ee

.field private static final MAX_TOAST_COUNT:I = 0x5

.field private static final SP_KEY_TOAST_COUNT:Ljava/lang/String; = "toast_count"

.field private static final SP_NAME:Ljava/lang/String; = "virtual_key_hide_button_toast"


# instance fields
.field private mIsImmersiveEnable:Z

.field private mIsTempExited:Z

.field private mNavBarHeight:I

.field private mRegionSamplingPolicy:Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;-><init>(Landroid/view/View;Landroid/content/Context;)V

    .line 49
    new-instance p1, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController$1;-><init>(Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;)V

    iput-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mRegionSamplingPolicy:Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    .line 100
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07059b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mNavBarHeight:I

    const/4 p1, 0x0

    .line 101
    invoke-static {p2, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavBarImmersiveEnable(Landroid/content/Context;I)V

    .line 102
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mIsImmersiveEnable:Z

    .line 103
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mIsTempExited:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mNavBarHeight:I

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getPolicy()Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mRegionSamplingPolicy:Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    return-object p0
.end method

.method public isImmersiveEnable()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mIsTempExited:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mIsImmersiveEnable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBarTransition(I)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onNavStateChanged()V
    .locals 0

    return-void
.end method

.method public onPanelExpandChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 0

    return-void
.end method

.method public setImmersiveEnable(Z)V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImmersiveEnable, enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mIsTempExited:Z

    .line 132
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mIsImmersiveEnable:Z

    .line 133
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavBarImmersiveEnable(Landroid/content/Context;I)V

    return-void
.end method

.method public toggleImmersive(Z)V
    .locals 5

    .line 144
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->setImmersiveEnable(Z)V

    .line 145
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "virtual_key_hide_button_toast"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "toast_count"

    .line 146
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 148
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const p1, 0x7f1105eb

    goto :goto_0

    :cond_0
    const p1, 0x7f1105ea

    :goto_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public updateImmersiveStatus(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mIsTempExited:Z

    if-nez p1, :cond_0

    .line 156
    iget-boolean p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mIsImmersiveEnable:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 157
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavBarImmersiveEnable(Landroid/content/Context;I)V

    return-void
.end method
