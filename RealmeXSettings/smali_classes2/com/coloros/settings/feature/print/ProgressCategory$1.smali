.class final Lcom/coloros/settings/feature/print/ProgressCategory$1;
.super Ljava/lang/Object;
.source "ProgressCategory.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/print/ProgressCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/coloros/settings/feature/print/ProgressCategory;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/print/ProgressCategory;Landroid/widget/CheckBox;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory$1;->b:Lcom/coloros/settings/feature/print/ProgressCategory;

    iput-object p2, p0, Lcom/coloros/settings/feature/print/ProgressCategory$1;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory$1;->b:Lcom/coloros/settings/feature/print/ProgressCategory;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/print/ProgressCategory;->a(Z)V

    .line 99
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory$1;->b:Lcom/coloros/settings/feature/print/ProgressCategory;

    invoke-static {p1}, Lcom/coloros/settings/feature/print/ProgressCategory;->a(Lcom/coloros/settings/feature/print/ProgressCategory;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ProgressCategory$1;->b:Lcom/coloros/settings/feature/print/ProgressCategory;

    invoke-static {p1}, Lcom/coloros/settings/feature/print/ProgressCategory;->a(Lcom/coloros/settings/feature/print/ProgressCategory;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/print/ProgressCategory$1;->a:Landroid/widget/CheckBox;

    invoke-interface {p1, v0, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method
