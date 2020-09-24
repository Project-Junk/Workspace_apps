.class Lcolor/support/v4/view/ColorViewTreeObserverCompat$JBViewTreeObserverCompatImpl;
.super Lcolor/support/v4/view/ColorViewTreeObserverCompat$BaseViewTreeObserverCompatImpl;
.source "ColorViewTreeObserverCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v4/view/ColorViewTreeObserverCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBViewTreeObserverCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcolor/support/v4/view/ColorViewTreeObserverCompat$BaseViewTreeObserverCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
