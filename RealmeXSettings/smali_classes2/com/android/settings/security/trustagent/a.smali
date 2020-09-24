.class public final Lcom/android/settings/security/trustagent/a;
.super Ljava/lang/Object;
.source "TrustAgentInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/security/trustagent/a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/CharSequence;

.field final b:Landroid/content/ComponentName;

.field final c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/settings/security/trustagent/a;->a:Ljava/lang/CharSequence;

    .line 29
    iput-object p2, p0, Lcom/android/settings/security/trustagent/a;->b:Landroid/content/ComponentName;

    .line 30
    iput-object p3, p0, Lcom/android/settings/security/trustagent/a;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 22
    check-cast p1, Lcom/android/settings/security/trustagent/a;

    .line 1055
    iget-object v0, p0, Lcom/android/settings/security/trustagent/a;->b:Landroid/content/ComponentName;

    .line 2038
    iget-object p1, p1, Lcom/android/settings/security/trustagent/a;->b:Landroid/content/ComponentName;

    .line 1055
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 47
    instance-of v0, p1, Lcom/android/settings/security/trustagent/a;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/settings/security/trustagent/a;->b:Landroid/content/ComponentName;

    check-cast p1, Lcom/android/settings/security/trustagent/a;

    .line 1038
    iget-object p1, p1, Lcom/android/settings/security/trustagent/a;->b:Landroid/content/ComponentName;

    .line 48
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
