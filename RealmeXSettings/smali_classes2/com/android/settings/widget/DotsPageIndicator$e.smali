.class public final Lcom/android/settings/widget/DotsPageIndicator$e;
.super Lcom/android/settings/widget/DotsPageIndicator$f;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/DotsPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;F)V
    .locals 0

    .line 898
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$e;->a:Lcom/android/settings/widget/DotsPageIndicator;

    .line 899
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/DotsPageIndicator$f;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    return-void
.end method


# virtual methods
.method final a(F)Z
    .locals 1

    .line 903
    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator$e;->b:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
