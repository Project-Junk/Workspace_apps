.class public Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;
.super Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.source "ColorQSIconViewImpl.java"


# instance fields
.field private mAnim:Landroid/graphics/drawable/Animatable2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;)Landroid/graphics/drawable/Animatable2;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->mAnim:Landroid/graphics/drawable/Animatable2;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 11

    .line 41
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_0
    const v1, 0x7f0a0492

    .line 42
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f0a0489

    const v4, 0x7f0a0496

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 43
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, p2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v2, :cond_c

    move-object v2, p2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->doAnim:Z

    .line 44
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_1
    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_2

    .line 45
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->shouldAnimate(Landroid/widget/ImageView;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v5

    .line 46
    :goto_1
    iput-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->mLastIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 v7, 0x0

    if-eqz v0, :cond_4

    if-eqz v6, :cond_3

    .line 47
    iget-object v8, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v0, v8}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {v0, v8}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_2

    :cond_4
    move-object v8, v7

    .line 50
    :goto_2
    instance-of v9, p2, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v9, :cond_5

    if-eqz p3, :cond_5

    move-object p3, p2

    check-cast p3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v10, p3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->doAnim:Z

    if-eqz v10, :cond_5

    iget-boolean v10, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-nez v10, :cond_5

    iget-boolean v10, p3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-ne v10, v2, :cond_5

    .line 52
    iget-object p3, p3, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->animIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iget-object v2, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v2}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 53
    instance-of v2, p3, Landroid/graphics/drawable/Animatable2;

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move-object p3, v8

    :goto_3
    if-eqz v0, :cond_6

    .line 57
    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getPadding()I

    move-result v2

    goto :goto_4

    :cond_6
    move v2, v5

    :goto_4
    if-eqz p3, :cond_7

    .line 59
    invoke-virtual {p3, v5}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->getLayoutDirection()I

    move-result v8

    invoke-virtual {p3, v8}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 63
    :cond_7
    instance-of v8, p1, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    if-eqz v8, :cond_8

    .line 64
    move-object v8, p1

    check-cast v8, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    invoke-virtual {v8, v6}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setAnimationEnabled(Z)V

    .line 65
    invoke-virtual {v8, v7, p3}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setState(Lcom/android/systemui/plugins/qs/QSTile$SlashState;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 67
    :cond_8
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :goto_5
    invoke-virtual {p1, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 71
    iget-object v1, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-virtual {p1, v4, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    if-eqz v9, :cond_9

    .line 73
    move-object v1, p2

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->doAnim:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 75
    :cond_9
    invoke-virtual {p1, v5, v2, v5, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 76
    iget-object v1, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->mAnim:Landroid/graphics/drawable/Animatable2;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable2;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 77
    iget-object v1, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->mAnim:Landroid/graphics/drawable/Animatable2;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable2;->stop()V

    .line 78
    iget-object v1, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->mAnim:Landroid/graphics/drawable/Animatable2;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable2;->clearAnimationCallbacks()V

    .line 79
    iput-object v7, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->mAnim:Landroid/graphics/drawable/Animatable2;

    .line 81
    :cond_a
    instance-of v1, p3, Landroid/graphics/drawable/Animatable2;

    if-eqz v1, :cond_c

    .line 82
    check-cast p3, Landroid/graphics/drawable/Animatable2;

    iput-object p3, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->mAnim:Landroid/graphics/drawable/Animatable2;

    .line 83
    iget-object p3, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->mAnim:Landroid/graphics/drawable/Animatable2;

    invoke-interface {p3}, Landroid/graphics/drawable/Animatable2;->start()V

    .line 84
    iget-boolean p2, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    if-eqz p2, :cond_b

    .line 85
    iget-object p1, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->mAnim:Landroid/graphics/drawable/Animatable2;

    new-instance p2, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl$1;-><init>(Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;)V

    invoke-interface {p1, p2}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    goto :goto_6

    .line 92
    :cond_b
    iget-object p2, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->mAnim:Landroid/graphics/drawable/Animatable2;

    new-instance p3, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl$2;

    invoke-direct {p3, p0, v0, p1}, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl$2;-><init>(Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;Lcom/android/systemui/plugins/qs/QSTile$Icon;Landroid/widget/ImageView;)V

    invoke-interface {p2, p3}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_c
    :goto_6
    return-void
.end method
