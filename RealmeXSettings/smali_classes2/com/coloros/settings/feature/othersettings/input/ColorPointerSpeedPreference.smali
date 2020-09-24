.class public Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;
.super Lcom/coloros/settings/widget/preference/ColorSeekBarDialogPreference;
.source "ColorPointerSpeedPreference.java"

# interfaces
.implements Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/hardware/input/InputManager;

.field private b:Lcom/color/support/widget/seekbar/ColorSeekBar;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/ColorSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p1, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$1;-><init>(Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->f:Landroid/database/ContentObserver;

    const p1, 0x7f0d00a7

    .line 53
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->setLayoutResource(I)V

    const p1, 0x7f0d00c6

    .line 54
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->setWidgetLayoutResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->a:Landroid/hardware/input/InputManager;

    return-void
.end method

.method private a()V
    .locals 2

    .line 116
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->a:Landroid/hardware/input/InputManager;

    iget v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->c:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;)V
    .locals 2

    .line 1095
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->a:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    .line 1096
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->b:Lcom/color/support/widget/seekbar/ColorSeekBar;

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/ColorSeekBarDialogPreference;->a(Landroid/view/View;)V

    const v0, 0x7f0a05db

    .line 1072
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/seekbar/ColorSeekBar;

    .line 72
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->b:Lcom/color/support/widget/seekbar/ColorSeekBar;

    .line 73
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->b:Lcom/color/support/widget/seekbar/ColorSeekBar;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setMax(I)V

    .line 74
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->a:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->c:I

    .line 75
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->b:Lcom/color/support/widget/seekbar/ColorSeekBar;

    iget v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->c:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setProgress(I)V

    .line 76
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->b:Lcom/color/support/widget/seekbar/ColorSeekBar;

    invoke-virtual {p1, p0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 101
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/ColorSeekBarDialogPreference;->a(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->a:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->b:Lcom/color/support/widget/seekbar/ColorSeekBar;

    .line 107
    invoke-virtual {v2}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    .line 106
    invoke-virtual {p1, v1, v2}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->a()V

    .line 112
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->f:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onClick()V
    .locals 4

    .line 60
    invoke-super {p0}, Lcom/coloros/settings/widget/preference/ColorSeekBarDialogPreference;->onClick()V

    .line 62
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    .line 63
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->f:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 62
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->d:Z

    return-void
.end method

.method public onProgressChanged(Lcom/color/support/widget/seekbar/ColorSeekBar;IZ)V
    .locals 0

    .line 80
    iget-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->e:Z

    if-nez p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->a:Landroid/hardware/input/InputManager;

    add-int/lit8 p2, p2, -0x7

    invoke-virtual {p1, p2}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    check-cast p1, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;

    .line 146
    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/coloros/settings/widget/preference/ColorSeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 147
    iget v0, p1, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;->b:I

    iput v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->c:I

    .line 148
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->a:Landroid/hardware/input/InputManager;

    iget p1, p1, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;->a:I

    add-int/lit8 p1, p1, -0x7

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    return-void

    .line 141
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/coloros/settings/widget/preference/ColorSeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 124
    invoke-super {p0}, Lcom/coloros/settings/widget/preference/ColorSeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->c()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->c()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v1, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;

    invoke-direct {v1, v0}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;-><init>(Landroid/os/Parcelable;)V

    .line 129
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->b:Lcom/color/support/widget/seekbar/ColorSeekBar;

    invoke-virtual {v0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getProgress()I

    move-result v0

    iput v0, v1, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;->a:I

    .line 130
    iget v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->c:I

    iput v0, v1, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference$a;->b:I

    .line 133
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->a()V

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public onStartTrackingTouch(Lcom/color/support/widget/seekbar/ColorSeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->e:Z

    return-void
.end method

.method public onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->e:Z

    .line 91
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorPointerSpeedPreference;->a:Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, -0x7

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    return-void
.end method
