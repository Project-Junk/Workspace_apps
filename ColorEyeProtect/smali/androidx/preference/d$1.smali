.class Landroidx/preference/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/d;->a(Landroidx/appcompat/app/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/d;


# direct methods
.method constructor <init>(Landroidx/preference/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/d$1;->a:Landroidx/preference/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p1, p0, Landroidx/preference/d$1;->a:Landroidx/preference/d;

    iget-boolean p3, p1, Landroidx/preference/d;->k:Z

    iget-object v0, p0, Landroidx/preference/d$1;->a:Landroidx/preference/d;

    iget-object v0, v0, Landroidx/preference/d;->j:Ljava/util/Set;

    iget-object p0, p0, Landroidx/preference/d$1;->a:Landroidx/preference/d;

    iget-object p0, p0, Landroidx/preference/d;->m:[Ljava/lang/CharSequence;

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    or-int/2addr p0, p3

    iput-boolean p0, p1, Landroidx/preference/d;->k:Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroidx/preference/d$1;->a:Landroidx/preference/d;

    iget-boolean p3, p1, Landroidx/preference/d;->k:Z

    iget-object v0, p0, Landroidx/preference/d$1;->a:Landroidx/preference/d;

    iget-object v0, v0, Landroidx/preference/d;->j:Ljava/util/Set;

    iget-object p0, p0, Landroidx/preference/d$1;->a:Landroidx/preference/d;

    iget-object p0, p0, Landroidx/preference/d;->m:[Ljava/lang/CharSequence;

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :goto_1
    return-void
.end method
