.class public abstract Lcom/android/setupwizardlib/items/AbstractItem;
.super Lcom/android/setupwizardlib/items/AbstractItemHierarchy;
.source "AbstractItem.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(I)Lcom/android/setupwizardlib/items/a;
    .locals 0

    return-object p0
.end method
