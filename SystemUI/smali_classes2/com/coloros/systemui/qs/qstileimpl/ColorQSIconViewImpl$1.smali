.class Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl$1;
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


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl$1;->this$0:Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl$1;->this$0:Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;

    invoke-static {p0}, Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;->access$000(Lcom/coloros/systemui/qs/qstileimpl/ColorQSIconViewImpl;)Landroid/graphics/drawable/Animatable2;

    move-result-object p0

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable2;->start()V

    return-void
.end method
