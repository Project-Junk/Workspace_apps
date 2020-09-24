.class public Lcolor/support/v4/view/ColorViewTreeObserverCompat;
.super Ljava/lang/Object;
.source "ColorViewTreeObserverCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v4/view/ColorViewTreeObserverCompat$JBViewTreeObserverCompatImpl;,
        Lcolor/support/v4/view/ColorViewTreeObserverCompat$BaseViewTreeObserverCompatImpl;,
        Lcolor/support/v4/view/ColorViewTreeObserverCompat$ViewTreeObserverCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcolor/support/v4/view/ColorViewTreeObserverCompat$ViewTreeObserverCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 73
    new-instance v0, Lcolor/support/v4/view/ColorViewTreeObserverCompat$JBViewTreeObserverCompatImpl;

    invoke-direct {v0}, Lcolor/support/v4/view/ColorViewTreeObserverCompat$JBViewTreeObserverCompatImpl;-><init>()V

    sput-object v0, Lcolor/support/v4/view/ColorViewTreeObserverCompat;->IMPL:Lcolor/support/v4/view/ColorViewTreeObserverCompat$ViewTreeObserverCompatImpl;

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Lcolor/support/v4/view/ColorViewTreeObserverCompat$BaseViewTreeObserverCompatImpl;

    invoke-direct {v0}, Lcolor/support/v4/view/ColorViewTreeObserverCompat$BaseViewTreeObserverCompatImpl;-><init>()V

    sput-object v0, Lcolor/support/v4/view/ColorViewTreeObserverCompat;->IMPL:Lcolor/support/v4/view/ColorViewTreeObserverCompat$ViewTreeObserverCompatImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    .line 85
    sget-object v0, Lcolor/support/v4/view/ColorViewTreeObserverCompat;->IMPL:Lcolor/support/v4/view/ColorViewTreeObserverCompat$ViewTreeObserverCompatImpl;

    invoke-interface {v0, p0, p1}, Lcolor/support/v4/view/ColorViewTreeObserverCompat$ViewTreeObserverCompatImpl;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
