.class public final Lcom/android/setupwizardlib/items/d;
.super Lcom/android/setupwizardlib/items/e;
.source "ItemInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/items/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/setupwizardlib/items/e<",
        "Lcom/android/setupwizardlib/items/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/e;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/android/setupwizardlib/items/Item;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1130
    iput-object p1, p0, Lcom/android/setupwizardlib/items/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 24
    check-cast p1, Lcom/android/setupwizardlib/items/c;

    check-cast p2, Lcom/android/setupwizardlib/items/c;

    .line 2037
    instance-of v0, p1, Lcom/android/setupwizardlib/items/d$a;

    if-eqz v0, :cond_0

    .line 2038
    check-cast p1, Lcom/android/setupwizardlib/items/d$a;

    invoke-interface {p1, p2}, Lcom/android/setupwizardlib/items/d$a;->a(Lcom/android/setupwizardlib/items/c;)V

    return-void

    .line 2040
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
