.class final Lcom/android/settings/widget/DotsPageIndicator$1;
.super Ljava/lang/Object;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$1;->a:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$1;->a:Lcom/android/settings/widget/DotsPageIndicator;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/widget/DotsPageIndicator;->a(Lcom/android/settings/widget/DotsPageIndicator;Z)Z

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 173
    iget-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$1;->a:Lcom/android/settings/widget/DotsPageIndicator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/widget/DotsPageIndicator;->a(Lcom/android/settings/widget/DotsPageIndicator;Z)Z

    return-void
.end method
