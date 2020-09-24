.class public Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FingerprintAnimStyleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;
    }
.end annotation


# static fields
.field private static final ANIM_STYLE_COUNT:I

.field public static final DFLT_ANIM_STYLE:Ljava/lang/String; = "anim_6"

.field public static final KEY_OPTICAL_FP_ANIM_STYLE:Ljava/lang/String; = "optical_fp_anim_style"

.field private static final STYLE_VIDEO_URI_PATH:Ljava/lang/String; = "android.resource://com.android.settings/"

.field private static final TAG:Ljava/lang/String; = "AnimStyleFragment"

.field private static final sAnimStyles:[Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;


# instance fields
.field private mIcLayout:Landroid/widget/LinearLayout;

.field private mLastSelectIndex:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0x8

    .line 56
    new-array v1, v0, [Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    new-instance v8, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    const v3, 0x7f08099e

    const v4, 0x7f110009

    const v5, 0x7f11001b

    const-string v6, "anim_6"

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;-><init>(IIILjava/lang/String;Z)V

    const/4 v2, 0x0

    aput-object v8, v1, v2

    new-instance v2, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    const v10, 0x7f08099d

    const v11, 0x7f11000a

    const v12, 0x7f11001c

    const-string v13, "anim_7"

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;-><init>(IIILjava/lang/String;Z)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    const v5, 0x7f080997

    const v6, 0x7f11000b

    const v7, 0x7f11001d

    const-string v8, "anim_8"

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;-><init>(IIILjava/lang/String;Z)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    const v5, 0x7f08099f

    const v6, 0x7f110006

    const v7, 0x7f110018

    const-string v8, "anim_3"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;-><init>(IIILjava/lang/String;Z)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    const v5, 0x7f08099b

    const v6, 0x7f110005

    const v7, 0x7f110017

    const-string v8, "anim_2"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;-><init>(IIILjava/lang/String;Z)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    const v5, 0x7f080999

    const v6, 0x7f110004

    const v7, 0x7f110016

    const-string v8, "anim_1"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;-><init>(IIILjava/lang/String;Z)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    const v5, 0x7f08099a

    const v6, 0x7f110007

    const v7, 0x7f110019

    const-string v8, "anim_4"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;-><init>(IIILjava/lang/String;Z)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    const v5, 0x7f080998

    const v6, 0x7f110008

    const v7, 0x7f11001a

    const-string v8, "anim_5"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;-><init>(IIILjava/lang/String;Z)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 66
    sput-object v1, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->sAnimStyles:[Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    sput v0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->ANIM_STYLE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private dcsAnimSwitch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "fingerprint_old_anim"

    .line 94
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "fingerprint_new_anim"

    .line 95
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "20012"

    const-string p2, "fingerprint_anim_switch"

    .line 96
    invoke-static {p0, p1, p2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private initToolBar()V
    .locals 3

    const v0, 0x7f0a070a

    .line 178
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 185
    new-instance v1, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$FingerprintAnimStyleActivity$Vog32_BRCfBn_vP4PwYLghRjyqQ;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$FingerprintAnimStyleActivity$Vog32_BRCfBn_vP4PwYLghRjyqQ;-><init>(Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;)V

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ag(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 188
    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    .line 190
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method private initView()V
    .locals 7

    .line 194
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const v1, 0x7f0a0084

    .line 195
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mIcLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    .line 196
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    move v2, v1

    .line 197
    :goto_0
    sget v3, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->ANIM_STYLE_COUNT:I

    if-ge v2, v3, :cond_1

    .line 198
    sget-object v3, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->sAnimStyles:[Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    aget-object v3, v3, v2

    .line 199
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 200
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 202
    invoke-virtual {v5, v1, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 203
    invoke-static {v3}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->access$300(Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f08099c

    .line 204
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 206
    :cond_0
    invoke-static {v3}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->access$400(Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    .line 209
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mIcLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0085

    .line 212
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mVideoView:Landroid/widget/VideoView;

    return-void
.end method

.method private initWindow()V
    .locals 3

    .line 169
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x700

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method private playRingTone(I)V
    .locals 3

    .line 216
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_front_finger_sound"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->stopRingtone()V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mRingtone:Landroid/media/Ringtone;

    .line 223
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p1}, Landroid/media/Ringtone;->play()V

    return-void
.end method

.method private showStyleAnim(I)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.resource://com.android.settings/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 241
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    .line 242
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 243
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 244
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method private stopRingtone()V
    .locals 3

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimStyleFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public synthetic lambda$initToolBar$0$FingerprintAnimStyleActivity(Landroid/view/View;)V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_0

    .line 75
    sget v0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->ANIM_STYLE_COUNT:I

    if-ge p1, v0, :cond_0

    .line 76
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mLastSelectIndex:I

    if-eq p1, v0, :cond_0

    .line 77
    sget-object v1, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->sAnimStyles:[Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->access$000(Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->sAnimStyles:[Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->access$000(Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->dcsAnimSwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mIcLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mLastSelectIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->sAnimStyles:[Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mLastSelectIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->setSelected(Z)V

    .line 80
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mIcLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08099c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->sAnimStyles:[Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->setSelected(Z)V

    .line 82
    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mLastSelectIndex:I

    .line 83
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->sAnimStyles:[Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mLastSelectIndex:I

    aget-object v0, v0, v1

    .line 84
    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->access$000(Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "optical_fp_anim_style"

    .line 83
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 85
    sget-object p1, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->sAnimStyles:[Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mLastSelectIndex:I

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->access$100(Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->playRingTone(I)V

    .line 86
    sget-object p1, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->sAnimStyles:[Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mLastSelectIndex:I

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->access$200(Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->showStyleAnim(I)V

    .line 87
    invoke-static {p0, v1}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 122
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0240

    .line 123
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->setContentView(I)V

    .line 124
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->initWindow()V

    const p1, 0x7f12017d

    .line 125
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->setTitle(I)V

    .line 126
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->initToolBar()V

    .line 128
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "optical_fp_anim_style"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "anim_6"

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 134
    :goto_0
    sget-object v2, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->sAnimStyles:[Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 135
    aget-object v2, v2, v1

    .line 136
    invoke-virtual {v2, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->setSelected(Z)V

    .line 137
    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->access$000(Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 138
    invoke-virtual {v2, v3}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->setSelected(Z)V

    .line 139
    iput v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mLastSelectIndex:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_2
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->initView()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 154
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 155
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->stopRingtone()V

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_0
    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mVideoView:Landroid/widget/VideoView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimStyleFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 148
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 149
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->sAnimStyles:[Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->mLastSelectIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;->access$200(Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity$AnimStyle;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintAnimStyleActivity;->showStyleAnim(I)V

    return-void
.end method
