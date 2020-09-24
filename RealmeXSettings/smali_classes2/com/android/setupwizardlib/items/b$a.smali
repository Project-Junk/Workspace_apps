.class final Lcom/android/setupwizardlib/items/b$a;
.super Ljava/lang/Object;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/items/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/util/SparseIntArray;

.field b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/b$a;->a:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/android/setupwizardlib/items/b$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/b$a;-><init>()V

    return-void
.end method
