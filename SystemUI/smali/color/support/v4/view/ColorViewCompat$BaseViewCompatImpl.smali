.class Lcolor/support/v4/view/ColorViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ColorViewCompat.java"

# interfaces
.implements Lcolor/support/v4/view/ColorViewCompat$ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v4/view/ColorViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawLayoutDirection(Landroid/view/View;)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method public getTextAlignment(Landroid/view/View;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVisibleToUser(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setTextAlignment(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
