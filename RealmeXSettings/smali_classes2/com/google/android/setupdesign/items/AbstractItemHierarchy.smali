.class public abstract Lcom/google/android/setupdesign/items/AbstractItemHierarchy;
.super Ljava/lang/Object;
.source "AbstractItemHierarchy.java"

# interfaces
.implements Lcom/google/android/setupdesign/items/d;


# instance fields
.field a:I

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/setupdesign/items/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->a:I

    .line 41
    sget-object v1, Lcom/google/android/setupdesign/b$g;->SudAbstractItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 42
    sget p2, Lcom/google/android/setupdesign/b$g;->SudAbstractItem_android_id:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->a:I

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    const-string v0, "AbstractItemHierarchy"

    if-gez p1, :cond_0

    .line 78
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "notifyItemRangeChanged: Invalid position="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-gez p2, :cond_1

    .line 82
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "notifyItemRangeChanged: Invalid itemCount="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupdesign/items/d$a;

    .line 87
    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/setupdesign/items/d$a;->a(Lcom/google/android/setupdesign/items/d;II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/google/android/setupdesign/items/d$a;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 1051
    iget v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->a:I

    return v0
.end method

.method public final b(II)V
    .locals 2

    const-string v0, "AbstractItemHierarchy"

    if-gez p1, :cond_0

    .line 94
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "notifyItemRangeInserted: Invalid position="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-gez p2, :cond_1

    .line 98
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "notifyItemRangeInserted: Invalid itemCount="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupdesign/items/d$a;

    .line 103
    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/setupdesign/items/d$a;->b(Lcom/google/android/setupdesign/items/d;II)V

    goto :goto_0

    :cond_2
    return-void
.end method
