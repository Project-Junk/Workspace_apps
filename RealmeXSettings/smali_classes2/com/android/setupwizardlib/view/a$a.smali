.class public final Lcom/android/setupwizardlib/view/a$a;
.super Landroid/text/method/LinkMovementMethod;
.source "TouchableMovementMethod.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/a$a;->a:Z

    return-void
.end method

.method public static c()Lcom/android/setupwizardlib/view/a$a;
    .locals 1

    .line 52
    new-instance v0, Lcom/android/setupwizardlib/view/a$a;

    invoke-direct {v0}, Lcom/android/setupwizardlib/view/a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/MotionEvent;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/setupwizardlib/view/a$a;->b:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/android/setupwizardlib/view/a$a;->a:Z

    return v0
.end method

.method public final onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 60
    iput-object p3, p0, Lcom/android/setupwizardlib/view/a$a;->b:Landroid/view/MotionEvent;

    .line 61
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    .line 62
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_1

    .line 66
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/setupwizardlib/view/a$a;->a:Z

    goto :goto_1

    .line 68
    :cond_1
    iput-boolean p1, p0, Lcom/android/setupwizardlib/view/a$a;->a:Z

    :goto_1
    return p1
.end method
