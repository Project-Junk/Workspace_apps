.class public Lcom/android/settings/PointerSpeedPreference;
.super Lcom/android/settings/SeekBarDialogPreference;
.source "PointerSpeedPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PointerSpeedPreference$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/hardware/input/InputManager;

.field private b:Landroid/widget/SeekBar;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance p1, Lcom/android/settings/PointerSpeedPreference$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/settings/PointerSpeedPreference$1;-><init>(Lcom/android/settings/PointerSpeedPreference;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->f:Landroid/database/ContentObserver;

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->a:Landroid/hardware/input/InputManager;

    return-void
.end method

.method private a()V
    .locals 2

    .line 112
    iget-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->a:Landroid/hardware/input/InputManager;

    iget v1, p0, Lcom/android/settings/PointerSpeedPreference;->c:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/PointerSpeedPreference;)V
    .locals 2

    .line 1091
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->a:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    .line 1092
    iget-object p0, p0, Lcom/android/settings/PointerSpeedPreference;->b:Landroid/widget/SeekBar;

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/SeekBarDialogPreference;->a(Landroid/view/View;)V

    const v0, 0x7f0a05db

    .line 1070
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 68
    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->b:Landroid/widget/SeekBar;

    .line 69
    iget-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->b:Landroid/widget/SeekBar;

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 70
    iget-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->a:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/PointerSpeedPreference;->c:I

    .line 71
    iget-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->b:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/android/settings/PointerSpeedPreference;->c:I

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 72
    iget-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->b:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/SeekBarDialogPreference;->a(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->a:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PointerSpeedPreference;->b:Landroid/widget/SeekBar;

    .line 103
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    .line 102
    invoke-virtual {p1, v1, v2}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->a()V

    .line 108
    :goto_0
    iget-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->f:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onClick()V
    .locals 4

    .line 55
    invoke-super {p0}, Lcom/android/settings/SeekBarDialogPreference;->onClick()V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_speed"

    .line 58
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PointerSpeedPreference;->f:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 57
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->d:Z

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 76
    iget-boolean p1, p0, Lcom/android/settings/PointerSpeedPreference;->e:Z

    if-nez p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->a:Landroid/hardware/input/InputManager;

    add-int/lit8 p2, p2, -0x7

    invoke-virtual {p1, p2}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/PointerSpeedPreference$a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    check-cast p1, Lcom/android/settings/PointerSpeedPreference$a;

    .line 142
    invoke-virtual {p1}, Lcom/android/settings/PointerSpeedPreference$a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/settings/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 143
    iget v0, p1, Lcom/android/settings/PointerSpeedPreference$a;->b:I

    iput v0, p0, Lcom/android/settings/PointerSpeedPreference;->c:I

    .line 144
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->a:Landroid/hardware/input/InputManager;

    iget p1, p1, Lcom/android/settings/PointerSpeedPreference$a;->a:I

    add-int/lit8 p1, p1, -0x7

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    return-void

    .line 137
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 120
    invoke-super {p0}, Lcom/android/settings/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->c()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->c()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    new-instance v1, Lcom/android/settings/PointerSpeedPreference$a;

    invoke-direct {v1, v0}, Lcom/android/settings/PointerSpeedPreference$a;-><init>(Landroid/os/Parcelable;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, v1, Lcom/android/settings/PointerSpeedPreference$a;->a:I

    .line 126
    iget v0, p0, Lcom/android/settings/PointerSpeedPreference;->c:I

    iput v0, v1, Lcom/android/settings/PointerSpeedPreference$a;->b:I

    .line 129
    invoke-direct {p0}, Lcom/android/settings/PointerSpeedPreference;->a()V

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/android/settings/PointerSpeedPreference;->e:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->e:Z

    .line 87
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->a:Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, -0x7

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    return-void
.end method
