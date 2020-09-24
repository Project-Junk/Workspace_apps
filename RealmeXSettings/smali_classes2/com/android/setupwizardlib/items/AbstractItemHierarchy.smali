.class public abstract Lcom/android/setupwizardlib/items/AbstractItemHierarchy;
.super Ljava/lang/Object;
.source "AbstractItemHierarchy.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/c;


# instance fields
.field a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/setupwizardlib/items/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->a:I

    .line 46
    sget-object v1, Lcom/android/setupwizardlib/b$g;->SuwAbstractItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 47
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwAbstractItem_android_id:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->a:I

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    const-string v0, "AbstractItemHierarchy"

    if-gez p1, :cond_0

    .line 87
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "notifyItemRangeChanged: Invalid position="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-gez p2, :cond_1

    .line 91
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "notifyItemRangeChanged: Invalid itemCount="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/items/c$a;

    .line 96
    invoke-interface {v1, p0, p1, p2}, Lcom/android/setupwizardlib/items/c$a;->a(Lcom/android/setupwizardlib/items/c;II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/setupwizardlib/items/c$a;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 1056
    iget v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->a:I

    return v0
.end method

.method public final b(II)V
    .locals 2

    const-string v0, "AbstractItemHierarchy"

    if-gez p1, :cond_0

    .line 105
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "notifyItemRangeInserted: Invalid position="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-gez p2, :cond_1

    .line 109
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "notifyItemRangeInserted: Invalid itemCount="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/items/c$a;

    .line 114
    invoke-interface {v1, p0, p1, p2}, Lcom/android/setupwizardlib/items/c$a;->b(Lcom/android/setupwizardlib/items/c;II)V

    goto :goto_0

    :cond_2
    return-void
.end method
