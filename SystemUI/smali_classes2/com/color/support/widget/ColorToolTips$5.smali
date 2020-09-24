.class Lcom/color/support/widget/ColorToolTips$5;
.super Ljava/lang/Object;
.source "ColorToolTips.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorToolTips;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorToolTips;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorToolTips;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/color/support/widget/ColorToolTips$5;->this$0:Lcom/color/support/widget/ColorToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 269
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p2, 0x1

    if-eq p0, p2, :cond_0

    const/4 p2, 0x3

    if-eq p0, p2, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    instance-of p0, p1, Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    .line 279
    check-cast p1, Landroid/widget/ImageView;

    const/16 p0, 0xff

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0

    .line 271
    :cond_1
    instance-of p0, p1, Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    .line 272
    check-cast p1, Landroid/widget/ImageView;

    const/16 p0, 0x33

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
