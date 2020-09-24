.class Landroidx/preference/MultiSelectListPreferenceDialogFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/MultiSelectListPreferenceDialogFragment;->a(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/MultiSelectListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Landroidx/preference/MultiSelectListPreferenceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment$1;->a:Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment$1;->a:Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    iget-boolean p3, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->b:Z

    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment$1;->a:Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    iget-object v0, v0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->a:Ljava/util/Set;

    iget-object p0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment$1;->a:Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    iget-object p0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->d:[Ljava/lang/CharSequence;

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    or-int/2addr p0, p3

    iput-boolean p0, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->b:Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment$1;->a:Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    iget-boolean p3, p1, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->b:Z

    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment$1;->a:Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    iget-object v0, v0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->a:Ljava/util/Set;

    iget-object p0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment$1;->a:Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    iget-object p0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->d:[Ljava/lang/CharSequence;

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :goto_1
    return-void
.end method
