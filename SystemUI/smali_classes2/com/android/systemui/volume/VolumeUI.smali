.class public Lcom/android/systemui/volume/VolumeUI;
.super Lcom/android/systemui/SystemUI;
.source "VolumeUI.java"


# static fields
.field private static LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "VolumeUI"


# instance fields
.field private mColorVolumeComponent:Lcom/coloros/systemui/volume/ColorVolumeDialogComponent;

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "VolumeUI"

    const/4 v1, 0x3

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;
    .locals 1

    .line 72
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiVolumeUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI;->mColorVolumeComponent:Lcom/coloros/systemui/volume/ColorVolumeDialogComponent;

    return-object p0

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    return-object p0
.end method

.method private setDefaultVolumeController()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->setVisible(Landroid/content/Context;Z)V

    .line 96
    sget-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumeUI"

    const-string v1, "Registering default volume controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/volume/VolumeComponent;->register()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "mEnabled="

    .line 89
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumeComponent;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/volume/VolumeComponent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public start()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 51
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    .line 52
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez v2, :cond_2

    return-void

    .line 55
    :cond_2
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiVolumeUi()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/SystemUIFactory;->createColorVolumeDialogComponent(Lcom/android/systemui/SystemUI;Landroid/content/Context;)Lcom/coloros/systemui/volume/ColorVolumeDialogComponent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeUI;->mColorVolumeComponent:Lcom/coloros/systemui/volume/ColorVolumeDialogComponent;

    .line 58
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeUI;->mColorVolumeComponent:Lcom/coloros/systemui/volume/ColorVolumeDialogComponent;

    invoke-virtual {v2, v0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogComponent;->setEnableDialogs(ZZ)V

    goto :goto_2

    .line 60
    :cond_3
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/SystemUIFactory;->createVolumeDialogComponent(Lcom/android/systemui/SystemUI;Landroid/content/Context;)Lcom/android/systemui/volume/VolumeDialogComponent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 62
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/volume/VolumeDialogComponent;->setEnableDialogs(ZZ)V

    .line 65
    :goto_2
    const-class v0, Lcom/android/systemui/volume/VolumeComponent;

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->getVolumeComponent()Lcom/android/systemui/volume/VolumeComponent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumeUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->setDefaultVolumeController()V

    return-void
.end method
