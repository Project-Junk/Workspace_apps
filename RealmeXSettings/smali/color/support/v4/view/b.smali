.class public final Lcolor/support/v4/view/b;
.super Ljava/lang/Object;
.source "ColorViewTreeObserverCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v4/view/b$b;,
        Lcolor/support/v4/view/b$a;,
        Lcolor/support/v4/view/b$c;
    }
.end annotation


# static fields
.field static final a:Lcolor/support/v4/view/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 73
    new-instance v0, Lcolor/support/v4/view/b$b;

    invoke-direct {v0}, Lcolor/support/v4/view/b$b;-><init>()V

    sput-object v0, Lcolor/support/v4/view/b;->a:Lcolor/support/v4/view/b$c;

    return-void

    .line 75
    :cond_0
    new-instance v0, Lcolor/support/v4/view/b$a;

    invoke-direct {v0}, Lcolor/support/v4/view/b$a;-><init>()V

    sput-object v0, Lcolor/support/v4/view/b;->a:Lcolor/support/v4/view/b$c;

    return-void
.end method

.method public static a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    .line 85
    sget-object v0, Lcolor/support/v4/view/b;->a:Lcolor/support/v4/view/b$c;

    invoke-interface {v0, p0, p1}, Lcolor/support/v4/view/b$c;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
