.class public Lcom/google/android/setupdesign/items/ProgressBarItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "ProgressBarItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/Item;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final e()I
    .locals 1

    .line 42
    sget v0, Lcom/google/android/setupdesign/b$e;->sud_items_progress_bar:I

    return v0
.end method
