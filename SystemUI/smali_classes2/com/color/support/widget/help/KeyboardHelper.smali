.class public Lcom/color/support/widget/help/KeyboardHelper;
.super Ljava/lang/Object;
.source "KeyboardHelper.java"

# interfaces
.implements Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;


# static fields
.field private static final KEYBOARD_MODE_NUMERIC:I = 0x3

.field private static final KEYBOARD_MODE_QWERTY:I = 0x1

.field private static final KEYBOARD_MODE_SPECIAL_SYMBOLS:I = 0x4

.field private static final KEYBOARD_MODE_SYMBOLS:I = 0x2

.field private static final KEYBOARD_STATE_CAPSLOCK:I = 0x2

.field private static final KEYBOARD_STATE_NORMAL:I = 0x0

.field private static final KEYBOARD_STATE_SHIFTED:I = 0x1

.field private static final NUMERIC:I = 0x0

.field private static final QWERTY:I = 0x1

.field private static final SPECIAL_SYMBOLS:I = 0x3

.field private static final SYMBOLS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyboardHelper"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mEnableHaptics:Z

.field protected mIMM:Landroid/view/inputmethod/InputMethodManager;

.field private mIsLinearMotorVersion:Z

.field private mKeyboardState:I

.field private mKeyboardType:I

.field private final mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

.field private mKeyboards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/support/widget/SecurityKeyboard;",
            ">;"
        }
    .end annotation
.end field

.field private mLayouts:[I

.field private mNumberKeyboard:Lcom/color/support/widget/SecurityKeyboard;

.field private mPlayVoice:Z

.field private mQwertyKeyboard:Lcom/color/support/widget/SecurityKeyboard;

.field private mShiftIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftLockIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftedIcon:Landroid/graphics/drawable/Drawable;

.field private mSpecialSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

.field private mSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

.field private final mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/color/support/widget/SecurityKeyboardView;Landroid/view/View;)V
    .locals 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardType:I

    const/4 v1, 0x0

    .line 37
    iput v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardState:I

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboards:Ljava/util/ArrayList;

    .line 52
    iput-boolean v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mEnableHaptics:Z

    .line 53
    iput-boolean v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mPlayVoice:Z

    const/4 v2, 0x4

    .line 66
    new-array v2, v2, [I

    sget v3, Lcolor/support/v7/appcompat/R$xml;->oppo_password_kbd_numeric:I

    aput v3, v2, v1

    sget v1, Lcolor/support/v7/appcompat/R$xml;->oppo_password_kbd_qwerty:I

    aput v1, v2, v0

    sget v1, Lcolor/support/v7/appcompat/R$xml;->oppo_password_kbd_symbols:I

    const/4 v3, 0x2

    aput v1, v2, v3

    sget v1, Lcolor/support/v7/appcompat/R$xml;->oppo_password_kbd_special_symbols:I

    const/4 v3, 0x3

    aput v1, v2, v3

    iput-object v2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mLayouts:[I

    .line 75
    iput-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mContext:Landroid/content/Context;

    .line 76
    iput-object p3, p0, Lcom/color/support/widget/help/KeyboardHelper;->mTargetView:Landroid/view/View;

    .line 77
    iput-object p2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    .line 78
    iget-object p2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {p2, p0}, Lcom/color/support/widget/SecurityKeyboardView;->setOnKeyboardActionListener(Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardActionListener;)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "oppo.feature.vibrator.waveform.support"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mIsLinearMotorVersion:Z

    .line 81
    iget-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mTargetView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/help/KeyboardHelper;->createSecurityKeyboards()V

    .line 86
    invoke-virtual {p0, v0}, Lcom/color/support/widget/help/KeyboardHelper;->setKeyboardMode(I)V

    return-void
.end method

.method private createSecurityKeyboards()V
    .locals 6

    .line 90
    new-instance v0, Lcom/color/support/widget/SecurityKeyboard;

    iget-object v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mLayouts:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/color/support/widget/SecurityKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mQwertyKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    .line 91
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mQwertyKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    invoke-virtual {v0, v3}, Lcom/color/support/widget/SecurityKeyboard;->setKeyboardType(I)V

    .line 92
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboards:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mQwertyKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Lcom/color/support/widget/SecurityKeyboard;

    iget-object v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mLayouts:[I

    aget v2, v2, v4

    invoke-direct {v0, v1, v2, v4}, Lcom/color/support/widget/SecurityKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mNumberKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    .line 95
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mNumberKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/color/support/widget/SecurityKeyboard;->setKeyboardType(I)V

    .line 96
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboards:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mNumberKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Lcom/color/support/widget/SecurityKeyboard;

    iget-object v2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/color/support/widget/help/KeyboardHelper;->mLayouts:[I

    const/4 v5, 0x2

    aget v3, v3, v5

    invoke-direct {v0, v2, v3, v4}, Lcom/color/support/widget/SecurityKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    .line 99
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    invoke-virtual {v0, v5}, Lcom/color/support/widget/SecurityKeyboard;->setKeyboardType(I)V

    .line 100
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboards:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Lcom/color/support/widget/SecurityKeyboard;

    iget-object v2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/color/support/widget/help/KeyboardHelper;->mLayouts:[I

    aget v1, v3, v1

    invoke-direct {v0, v2, v1, v4}, Lcom/color/support/widget/SecurityKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSpecialSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    .line 103
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSpecialSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/color/support/widget/SecurityKeyboard;->setKeyboardType(I)V

    .line 104
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboards:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSpecialSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    if-eqz v0, :cond_1

    .line 116
    iget-object v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mAudioManager:Landroid/media/AudioManager;

    return-object p0

    .line 114
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getAudioManager called when there is no mView"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private handleCharacter(I[I)V
    .locals 1

    .line 307
    iget-object p2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {p2}, Lcom/color/support/widget/SecurityKeyboardView;->getNewShifted()I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 p2, 0x20

    if-eq p1, p2, :cond_0

    const/16 p2, 0xa

    if-eq p1, p2, :cond_0

    .line 308
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 311
    :cond_0
    invoke-direct {p0, p1}, Lcom/color/support/widget/help/KeyboardHelper;->sendKeyEventsToTarget(I)V

    return-void
.end method

.method private handleClose()V
    .locals 0

    return-void
.end method

.method private handleModeChange(I)V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView;->getKeyboard()Lcom/color/support/widget/SecurityKeyboard;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mNumberKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    const/4 v2, -0x2

    if-ne v0, v1, :cond_0

    if-ne p1, v2, :cond_0

    .line 242
    iget-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    goto :goto_0

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mNumberKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    const/4 v3, -0x6

    if-ne v0, v1, :cond_1

    if-ne p1, v3, :cond_1

    .line 244
    iget-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mQwertyKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    goto :goto_0

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mQwertyKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    if-ne v0, v1, :cond_2

    if-ne p1, v2, :cond_2

    .line 246
    iget-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    goto :goto_0

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mQwertyKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    if-ne v0, v1, :cond_3

    if-ne p1, v3, :cond_3

    .line 248
    iget-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mNumberKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    goto :goto_0

    .line 249
    :cond_3
    iget-object v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    if-ne v0, v1, :cond_4

    if-ne p1, v2, :cond_4

    .line 250
    iget-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mQwertyKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    goto :goto_0

    .line 251
    :cond_4
    iget-object v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    if-ne v0, v1, :cond_5

    if-ne p1, v3, :cond_5

    .line 252
    iget-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mNumberKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    goto :goto_0

    .line 253
    :cond_5
    iget-object v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    const/4 v2, -0x7

    if-ne v0, v1, :cond_6

    if-ne p1, v2, :cond_6

    .line 254
    iget-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSpecialSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    goto :goto_0

    .line 255
    :cond_6
    iget-object v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSpecialSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    if-ne v0, v1, :cond_7

    if-ne p1, v2, :cond_7

    .line 256
    iget-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    goto :goto_0

    .line 257
    :cond_7
    iget-object v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSpecialSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    if-ne v0, v1, :cond_8

    if-ne p1, v3, :cond_8

    .line 258
    iget-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mNumberKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    goto :goto_0

    .line 260
    :cond_8
    iget-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mQwertyKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    iget-object v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mNumberKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/color/support/widget/SecurityKeyboardView;->setPreviewEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->setKeyboard(Lcom/color/support/widget/SecurityKeyboard;)V

    .line 265
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mQwertyKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    if-ne p1, v0, :cond_a

    .line 266
    iput v2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardState:I

    .line 267
    invoke-direct {p0, p1}, Lcom/color/support/widget/help/KeyboardHelper;->updateShiftKeyIcon(Lcom/color/support/widget/SecurityKeyboard;)V

    .line 268
    iget-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    iget p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardState:I

    invoke-virtual {p1, p0}, Lcom/color/support/widget/SecurityKeyboardView;->setNewShifted(I)V

    :cond_a
    return-void
.end method

.method private handleShift(Z)V
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView;->getKeyboard()Lcom/color/support/widget/SecurityKeyboard;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mQwertyKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 288
    :cond_1
    iget v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardState:I

    if-nez v1, :cond_2

    .line 289
    iput v2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardState:I

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v2, :cond_4

    if-nez p1, :cond_3

    .line 293
    iput v4, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardState:I

    goto :goto_1

    .line 295
    :cond_3
    iput v3, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardState:I

    goto :goto_1

    :cond_4
    if-ne v1, v4, :cond_5

    .line 298
    iput v3, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardState:I

    .line 300
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setKeyboard(Lcom/color/support/widget/SecurityKeyboard;)V

    .line 301
    invoke-direct {p0, v0}, Lcom/color/support/widget/help/KeyboardHelper;->updateShiftKeyIcon(Lcom/color/support/widget/SecurityKeyboard;)V

    .line 302
    iget-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    iget p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardState:I

    invoke-virtual {p1, p0}, Lcom/color/support/widget/SecurityKeyboardView;->setNewShifted(I)V

    return-void
.end method

.method private performHapticFeedback()V
    .locals 2

    .line 320
    iget-boolean v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mIsLinearMotorVersion:Z

    if-eqz v0, :cond_0

    .line 321
    iget-object p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    const/16 v0, 0x12f

    invoke-virtual {p0, v0}, Lcom/color/support/widget/SecurityKeyboardView;->performHapticFeedback(I)Z

    return-void

    .line 324
    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mEnableHaptics:Z

    if-eqz v0, :cond_1

    .line 325
    iget-object p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/color/support/widget/SecurityKeyboardView;->performHapticFeedback(II)Z

    :cond_1
    return-void
.end method

.method private performKeyVoiceFeedback()V
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mPlayVoice:Z

    if-eqz v0, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/color/support/widget/help/KeyboardHelper;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_0
    return-void
.end method

.method private sendDownUpKeyEvents(I)V
    .locals 0

    return-void
.end method

.method private sendKeyEventsToTarget(I)V
    .locals 0

    return-void
.end method

.method private setVoiceEanble(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mPlayVoice:Z

    return-void
.end method

.method private updateShiftKeyIcon(Lcom/color/support/widget/SecurityKeyboard;)V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mQwertyKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    if-eq p1, v0, :cond_0

    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_sym_keyboard_shift:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mShiftIcon:Landroid/graphics/drawable/Drawable;

    .line 342
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_sym_keyboard_shift_shifted:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mShiftedIcon:Landroid/graphics/drawable/Drawable;

    .line 343
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_sym_keyboard_shift_locked:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 344
    invoke-virtual {p1}, Lcom/color/support/widget/SecurityKeyboard;->getShiftKeyIndex()I

    move-result v0

    .line 345
    iget v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardState:I

    if-nez v1, :cond_1

    .line 346
    invoke-virtual {p1}, Lcom/color/support/widget/SecurityKeyboard;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/SecurityKeyboard$Key;

    iget-object p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mShiftIcon:Landroid/graphics/drawable/Drawable;

    iput-object p0, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 348
    invoke-virtual {p1}, Lcom/color/support/widget/SecurityKeyboard;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/SecurityKeyboard$Key;

    iget-object p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mShiftedIcon:Landroid/graphics/drawable/Drawable;

    iput-object p0, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 350
    invoke-virtual {p1}, Lcom/color/support/widget/SecurityKeyboard;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/SecurityKeyboard$Key;

    iget-object p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object p0, p1, Lcom/color/support/widget/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getIconForImeAction(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    and-int/lit16 p1, p1, 0xff

    packed-switch p1, :pswitch_data_0

    .line 397
    iget-object p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcolor/support/v7/appcompat/R$drawable;->color_security_password_end_key_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 395
    :pswitch_0
    iget-object p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcolor/support/v7/appcompat/R$drawable;->color_security_password_end_key_previous:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 393
    :pswitch_1
    iget-object p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcolor/support/v7/appcompat/R$drawable;->color_security_password_end_key_next:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 390
    :pswitch_2
    iget-object p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcolor/support/v7/appcompat/R$drawable;->color_security_password_end_key_search:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 388
    :pswitch_3
    iget-object p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcolor/support/v7/appcompat/R$drawable;->color_security_password_end_key_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public handleBackspace()V
    .locals 1

    const/16 v0, 0x43

    .line 274
    invoke-direct {p0, v0}, Lcom/color/support/widget/help/KeyboardHelper;->sendDownUpKeyEvents(I)V

    return-void
.end method

.method public handleClear()V
    .locals 1

    const/16 v0, 0x1c

    .line 278
    invoke-direct {p0, v0}, Lcom/color/support/widget/help/KeyboardHelper;->sendDownUpKeyEvents(I)V

    return-void
.end method

.method public onKey(I[I)V
    .locals 2

    const/4 v0, -0x5

    if-ne p1, v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/color/support/widget/help/KeyboardHelper;->handleBackspace()V

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 198
    invoke-direct {p0, v1}, Lcom/color/support/widget/help/KeyboardHelper;->handleShift(Z)V

    goto :goto_1

    :cond_1
    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x7

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, -0x6

    if-ne p1, v0, :cond_3

    .line 203
    invoke-direct {p0, p1}, Lcom/color/support/widget/help/KeyboardHelper;->handleModeChange(I)V

    goto :goto_1

    .line 205
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/help/KeyboardHelper;->handleCharacter(I[I)V

    .line 207
    iget-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {p1}, Lcom/color/support/widget/SecurityKeyboardView;->getKeyboard()Lcom/color/support/widget/SecurityKeyboard;

    move-result-object p1

    .line 208
    iget p2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardState:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    iget-object p2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mQwertyKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    if-ne p1, p2, :cond_5

    .line 210
    iput v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardState:I

    .line 211
    invoke-direct {p0, p1}, Lcom/color/support/widget/help/KeyboardHelper;->updateShiftKeyIcon(Lcom/color/support/widget/SecurityKeyboard;)V

    .line 212
    iget-object p2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {p2, p1}, Lcom/color/support/widget/SecurityKeyboardView;->setKeyboard(Lcom/color/support/widget/SecurityKeyboard;)V

    .line 213
    iget-object p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    iget p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardState:I

    invoke-virtual {p1, p0}, Lcom/color/support/widget/SecurityKeyboardView;->setNewShifted(I)V

    goto :goto_1

    .line 201
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/color/support/widget/help/KeyboardHelper;->handleModeChange(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onPress(I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 407
    invoke-direct {p0}, Lcom/color/support/widget/help/KeyboardHelper;->performHapticFeedback()V

    .line 408
    invoke-direct {p0}, Lcom/color/support/widget/help/KeyboardHelper;->performKeyVoiceFeedback()V

    :cond_0
    return-void
.end method

.method public onRelease(I)V
    .locals 0

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setEnableHaptics(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mEnableHaptics:Z

    return-void
.end method

.method public setKeyboardMode(I)V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "show_password"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v0, 0x3

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    iget-object v3, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSpecialSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    invoke-virtual {v2, v3}, Lcom/color/support/widget/SecurityKeyboardView;->setKeyboard(Lcom/color/support/widget/SecurityKeyboard;)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    iget-object v3, p0, Lcom/color/support/widget/help/KeyboardHelper;->mNumberKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    invoke-virtual {v2, v3}, Lcom/color/support/widget/SecurityKeyboardView;->setKeyboard(Lcom/color/support/widget/SecurityKeyboard;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    iget-object v3, p0, Lcom/color/support/widget/help/KeyboardHelper;->mSymbolsKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    invoke-virtual {v2, v3}, Lcom/color/support/widget/SecurityKeyboardView;->setKeyboard(Lcom/color/support/widget/SecurityKeyboard;)V

    .line 139
    iput v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardState:I

    goto :goto_0

    .line 134
    :cond_3
    iget-object v2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    iget-object v3, p0, Lcom/color/support/widget/help/KeyboardHelper;->mQwertyKeyboard:Lcom/color/support/widget/SecurityKeyboard;

    invoke-virtual {v2, v3}, Lcom/color/support/widget/SecurityKeyboardView;->setKeyboard(Lcom/color/support/widget/SecurityKeyboard;)V

    .line 135
    iput v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardState:I

    .line 148
    :goto_0
    iget-object v2, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    if-eq p1, v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setPreviewEnabled(Z)V

    .line 149
    iput p1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardType:I

    .line 150
    invoke-direct {p0, v1}, Lcom/color/support/widget/help/KeyboardHelper;->handleShift(Z)V

    return-void
.end method

.method public setVibratePattern(I)V
    .locals 1

    .line 227
    :try_start_0
    iget-object p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    if-eqz p1, :cond_0

    const-string p1, "KeyboardHelper"

    const-string v0, "Vibrate pattern missing"

    .line 230
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    :cond_1
    return-void
.end method

.method public swipeDown()V
    .locals 0

    return-void
.end method

.method public swipeLeft()V
    .locals 0

    return-void
.end method

.method public swipeRight()V
    .locals 0

    return-void
.end method

.method public swipeUp()V
    .locals 0

    return-void
.end method

.method public updateEndKey(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 371
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/SecurityKeyboard;

    .line 372
    invoke-virtual {v1}, Lcom/color/support/widget/SecurityKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/SecurityKeyboard$Key;

    .line 373
    iget-object v3, v2, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    const/4 v1, 0x0

    .line 374
    iput-object v1, v2, Lcom/color/support/widget/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    .line 375
    iput-object p1, v2, Lcom/color/support/widget/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 380
    :cond_2
    iget-object p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidateAllKeys()V

    return-void
.end method

.method public updateEndKey(Ljava/lang/CharSequence;)V
    .locals 6

    .line 355
    iget-object v0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$string;->ime_action_done:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboards:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/SecurityKeyboard;

    .line 358
    invoke-virtual {v2}, Lcom/color/support/widget/SecurityKeyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/SecurityKeyboard$Key;

    .line 359
    iget-object v4, v3, Lcom/color/support/widget/SecurityKeyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    if-eqz p1, :cond_2

    move-object v2, p1

    goto :goto_1

    :cond_2
    move-object v2, v0

    .line 360
    :goto_1
    iput-object v2, v3, Lcom/color/support/widget/SecurityKeyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 361
    iput-object v2, v3, Lcom/color/support/widget/SecurityKeyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 366
    :cond_3
    iget-object p0, p0, Lcom/color/support/widget/help/KeyboardHelper;->mKeyboardView:Lcom/color/support/widget/SecurityKeyboardView;

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->invalidateAllKeys()V

    return-void
.end method
