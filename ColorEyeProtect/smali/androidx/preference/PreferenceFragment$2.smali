.class Landroidx/preference/PreferenceFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/PreferenceFragment$2;->a:Landroidx/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/preference/PreferenceFragment$2;->a:Landroidx/preference/PreferenceFragment;

    iget-object v0, v0, Landroidx/preference/PreferenceFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/preference/PreferenceFragment$2;->a:Landroidx/preference/PreferenceFragment;

    iget-object p0, p0, Landroidx/preference/PreferenceFragment;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
