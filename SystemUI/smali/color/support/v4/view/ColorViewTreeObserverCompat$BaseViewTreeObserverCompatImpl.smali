.class Lcolor/support/v4/view/ColorViewTreeObserverCompat$BaseViewTreeObserverCompatImpl;
.super Ljava/lang/Object;
.source "ColorViewTreeObserverCompat.java"

# interfaces
.implements Lcolor/support/v4/view/ColorViewTreeObserverCompat$ViewTreeObserverCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v4/view/ColorViewTreeObserverCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewTreeObserverCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
