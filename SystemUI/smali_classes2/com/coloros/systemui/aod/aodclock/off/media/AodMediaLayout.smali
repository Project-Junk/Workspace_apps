.class public Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;
.super Landroid/widget/LinearLayout;
.source "AodMediaLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AodMediaLayout"


# instance fields
.field private mAuthorView:Landroid/widget/TextView;

.field private mContentView:Landroid/widget/TextView;

.field private mHasAddMetadataCallBack:Z

.field private mIconSize:I

.field private mLayoutHeight:I

.field private mMediaAuthor:Ljava/lang/String;

.field private mMediaDes:Ljava/lang/String;

.field private mMediaIcon:Landroid/widget/ImageView;

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMediaTextColor:I

.field private mMediaTitle:Ljava/lang/String;

.field private mRootView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 70
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 71
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->setOrientation(I)V

    .line 72
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportAod()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodClose()Z

    move-result p1

    if-nez p1, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0700cf

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mIconSize:I

    .line 74
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0700cc

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mLayoutHeight:I

    .line 75
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableClockOnly()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 76
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getTextColorForLockScreen(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaTextColor:I

    .line 80
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->getMediaMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 81
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz p1, :cond_2

    .line 82
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->addRootView()V

    .line 83
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->addMediaIcon()V

    .line 84
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->addMediaAuthor()V

    .line 85
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->addMediaContent()V

    const/4 p1, 0x0

    .line 86
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    .line 77
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private addMediaAuthor()V
    .locals 3

    .line 148
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mAuthorView:Landroid/widget/TextView;

    .line 149
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    const/16 v1, 0x10

    .line 152
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 153
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mAuthorView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mAuthorView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->updateMediaAuthor()V

    .line 156
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mRootView:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mAuthorView:Landroid/widget/TextView;

    invoke-virtual {v1, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addMediaContent()V
    .locals 3

    .line 171
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mContentView:Landroid/widget/TextView;

    .line 172
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    const/16 v1, 0x10

    .line 175
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 176
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 178
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->updateMediaContent()V

    .line 179
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mRootView:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v1, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addMediaIcon()V
    .locals 4

    .line 139
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaIcon:Landroid/widget/ImageView;

    .line 140
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mIconSize:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    .line 141
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 142
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080524

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaTextColor:I

    invoke-static {v2, v3}, Lcom/color/support/util/ColorTintUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mRootView:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addRootView()V
    .locals 4

    .line 129
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mRootView:Landroid/widget/LinearLayout;

    .line 130
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mRootView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 131
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mRootView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 132
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mLayoutHeight:I

    const/4 v3, -0x2

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 133
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 134
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private updateMedia()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    .line 195
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->updateAodDozeStateAndStart(I)V

    .line 196
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->updateMediaAuthor()V

    .line 197
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->updateMediaContent()V

    .line 198
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->setAodSuspendState()V

    return-void
.end method

.method private updateMediaAuthor()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mAuthorView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const-string v1, "android.media.metadata.ARTIST"

    .line 161
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaAuthor:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mAuthorView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaAuthor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mAuthorView:Landroid/widget/TextView;

    const-string v1, "END"

    invoke-static {v1}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 164
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mAuthorView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mAuthorView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 166
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mAuthorView:Landroid/widget/TextView;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaTextColor:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private updateMediaContent()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mContentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v0, :cond_0

    const-string v1, "android.media.metadata.TITLE"

    .line 184
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaTitle:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mContentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mContentView:Landroid/widget/TextView;

    const-string v1, "END"

    invoke-static {v1}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 187
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mContentView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 188
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 189
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mContentView:Landroid/widget/TextView;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaTextColor:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addMetadataCallBack()V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mHasAddMetadataCallBack:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mHasAddMetadataCallBack:Z

    .line 95
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->addMetadataCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V

    :cond_0
    return-void
.end method

.method public onMediaLayoutDestroy()V
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mHasAddMetadataCallBack:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mHasAddMetadataCallBack:Z

    .line 102
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->removeMetadataCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V

    :cond_0
    return-void
.end method

.method public onMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    .line 109
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaDes:Ljava/lang/String;

    const/16 p1, 0x8

    .line 110
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->setVisibility(I)V

    return-void

    .line 113
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-nez p2, :cond_1

    .line 114
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationMediaHelper;->getMediaMetadata()Landroid/media/MediaMetadata;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 116
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMetadataChanged: metadata "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodMediaLayout"

    const-string v2, "Aod"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaDes:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "onMetadataChanged: media des is same to return. "

    .line 119
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->setVisibility(I)V

    .line 123
    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaDes:Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 125
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/media/AodMediaLayout;->updateMedia()V

    return-void
.end method
