.class public Lcom/android/systemui/pip/tv/PipControlsView;
.super Landroid/widget/LinearLayout;
.source "PipControlsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/tv/PipControlsView$Listener;
    }
.end annotation


# static fields
.field private static final DISABLED_ACTION_ALPHA:F = 0.54f

.field private static final TAG:Ljava/lang/String; = "PipControlsView"


# instance fields
.field private mCloseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

.field private mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomButtonViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/pip/tv/PipControlButtonView;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mFocusedChild:Lcom/android/systemui/pip/tv/PipControlButtonView;

.field private mFullButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

.field private final mHandler:Landroid/os/Handler;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/systemui/pip/tv/PipControlsView$Listener;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

.field private final mPipManager:Lcom/android/systemui/pip/tv/PipManager;

.field private final mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

.field private mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/pip/tv/PipControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    invoke-static {}, Lcom/android/systemui/pip/tv/PipManager;->getInstance()Lcom/android/systemui/pip/tv/PipManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    .line 73
    new-instance p1, Lcom/android/systemui/pip/tv/PipControlsView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/pip/tv/PipControlsView$1;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    .line 80
    new-instance p1, Lcom/android/systemui/pip/tv/PipControlsView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/pip/tv/PipControlsView$2;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    .line 87
    new-instance p1, Lcom/android/systemui/pip/tv/PipControlsView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/pip/tv/PipControlsView$3;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    .line 113
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 114
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0d0218

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 115
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/tv/PipControlsView;->setOrientation(I)V

    const/16 p1, 0x31

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/tv/PipControlsView;->setGravity(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/tv/PipControlsView;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->updateUserActions()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/tv/PipControlsView;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->updateMediaController()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipControlButtonView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusedChild:Lcom/android/systemui/pip/tv/PipControlButtonView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/pip/tv/PipControlsView;Lcom/android/systemui/pip/tv/PipControlButtonView;)Lcom/android/systemui/pip/tv/PipControlButtonView;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusedChild:Lcom/android/systemui/pip/tv/PipControlButtonView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipControlsView$Listener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mListener:Lcom/android/systemui/pip/tv/PipControlsView$Listener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method static synthetic lambda$updateUserActions$0(Lcom/android/systemui/pip/tv/PipControlButtonView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, -0x1

    .line 225
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic lambda$updateUserActions$1(Landroid/app/RemoteAction;Landroid/view/View;)V
    .locals 1

    .line 232
    :try_start_0
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 234
    sget-object p1, Lcom/android/systemui/pip/tv/PipControlsView;->TAG:Ljava/lang/String;

    const-string v0, "Failed to send action"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private updateMediaController()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 188
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 190
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    .line 191
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    .line 192
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 194
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->updateUserActions()V

    return-void
.end method

.method private updateUserActions()V
    .locals 8

    .line 202
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d0219

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;->addView(Landroid/view/View;)V

    .line 208
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v0, v2

    .line 212
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 213
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/pip/tv/PipControlButtonView;

    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    move v4, v2

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 220
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    .line 221
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 224
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsView$ZwQyQkGsN0bsRufZ6MVGwaQtJA8;

    invoke-direct {v6, v3}, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsView$ZwQyQkGsN0bsRufZ6MVGwaQtJA8;-><init>(Lcom/android/systemui/pip/tv/PipControlButtonView;)V

    iget-object v7, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 228
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 230
    new-instance v4, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsView$HMvSX-xIxW1kpM7rGrVPgysk-xY;

    invoke-direct {v4, v0}, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsView$HMvSX-xIxW1kpM7rGrVPgysk-xY;-><init>(Landroid/app/RemoteAction;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    :cond_3
    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setEnabled(Z)V

    .line 239
    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const v0, 0x3f0a3d71    # 0.54f

    :goto_4
    invoke-virtual {v3, v0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 243
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setVisibility(I)V

    goto :goto_6

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->getPlaybackState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 247
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setVisibility(I)V

    goto :goto_5

    .line 249
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setVisibility(I)V

    if-nez v0, :cond_8

    .line 251
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    const v3, 0x7f0808c4

    invoke-virtual {v0, v3}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setImageResource(I)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    const v3, 0x7f11065d

    invoke-virtual {v0, v3}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setText(I)V

    goto :goto_5

    .line 254
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    const v3, 0x7f0808c6

    invoke-virtual {v0, v3}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setImageResource(I)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    const v3, 0x7f110663

    invoke-virtual {v0, v3}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setText(I)V

    .line 260
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 261
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    return-void
.end method


# virtual methods
.method getFocusedButton()Lcom/android/systemui/pip/tv/PipControlButtonView;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusedChild:Lcom/android/systemui/pip/tv/PipControlButtonView;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 168
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->updateMediaController()V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/tv/PipManager;->addMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 175
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->removeMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 178
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a026d

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlButtonView;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFullButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFullButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFullButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    new-instance v1, Lcom/android/systemui/pip/tv/PipControlsView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipControlsView$4;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0179

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlButtonView;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCloseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCloseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCloseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    new-instance v1, Lcom/android/systemui/pip/tv/PipControlsView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipControlsView$5;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a045d

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlButtonView;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 147
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    new-instance v1, Lcom/android/systemui/pip/tv/PipControlsView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipControlsView$6;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFullButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->reset()V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCloseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->reset()V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->reset()V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFullButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipControlButtonView;->requestFocus()Z

    const/4 v0, 0x0

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 292
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->updateUserActions()V

    return-void
.end method

.method public setListener(Lcom/android/systemui/pip/tv/PipControlsView$Listener;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mListener:Lcom/android/systemui/pip/tv/PipControlsView$Listener;

    return-void
.end method