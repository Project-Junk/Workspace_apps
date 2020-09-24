.class Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl$2;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "ColorQSIconViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;

.field final synthetic val$icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;Lcom/android/systemui/plugins/qs/QSTile$Icon;Landroid/widget/ImageView;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl$2;->this$0:Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;

    iput-object p2, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl$2;->val$icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p3, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl$2;->val$iv:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 95
    iget-object p1, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl$2;->val$icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl$2;->this$0:Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;

    invoke-static {v0}, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->access$100(Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 98
    iget-object v0, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl$2;->this$0:Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;

    invoke-virtual {v0}, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 99
    iget-object p0, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl$2;->val$iv:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
