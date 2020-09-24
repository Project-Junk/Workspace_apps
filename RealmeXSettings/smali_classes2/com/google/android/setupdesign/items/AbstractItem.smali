.class public abstract Lcom/google/android/setupdesign/items/AbstractItem;
.super Lcom/google/android/setupdesign/items/AbstractItemHierarchy;
.source "AbstractItem.java"

# interfaces
.implements Lcom/google/android/setupdesign/items/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(I)Lcom/google/android/setupdesign/items/b;
    .locals 0

    return-object p0
.end method
