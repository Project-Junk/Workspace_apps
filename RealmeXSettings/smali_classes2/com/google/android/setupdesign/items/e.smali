.class public final Lcom/google/android/setupdesign/items/e;
.super Lcom/google/android/setupdesign/items/g;
.source "ItemInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/setupdesign/items/g<",
        "Lcom/google/android/setupdesign/items/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/g;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/google/android/setupdesign/items/Item;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1126
    iput-object p1, p0, Lcom/google/android/setupdesign/items/g;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 22
    check-cast p1, Lcom/google/android/setupdesign/items/d;

    check-cast p2, Lcom/google/android/setupdesign/items/d;

    .line 2035
    instance-of v0, p1, Lcom/google/android/setupdesign/items/e$a;

    if-eqz v0, :cond_0

    .line 2036
    check-cast p1, Lcom/google/android/setupdesign/items/e$a;

    invoke-interface {p1, p2}, Lcom/google/android/setupdesign/items/e$a;->a(Lcom/google/android/setupdesign/items/d;)V

    return-void

    .line 2038
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot add child item to "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
