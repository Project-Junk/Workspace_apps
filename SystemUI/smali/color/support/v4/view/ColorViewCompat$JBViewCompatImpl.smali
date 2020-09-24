.class Lcolor/support/v4/view/ColorViewCompat$JBViewCompatImpl;
.super Lcolor/support/v4/view/ColorViewCompat$BaseViewCompatImpl;
.source "ColorViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v4/view/ColorViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcolor/support/v4/view/ColorViewCompat$BaseViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextAlignment(Landroid/view/View;)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getTextAlignment()I

    move-result p0

    return p0
.end method

.method public isVisibleToUser(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setTextAlignment(Landroid/view/View;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->setTextAlignment(I)V

    return-void
.end method
