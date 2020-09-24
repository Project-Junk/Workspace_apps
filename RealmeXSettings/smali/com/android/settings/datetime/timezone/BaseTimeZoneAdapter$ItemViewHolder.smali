.class public Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BaseTimeZoneAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field final a:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Landroid/view/View;

.field final c:Landroid/widget/TextView;

.field final d:Landroid/widget/TextView;

.field final e:Landroid/widget/TextView;

.field final f:Landroid/widget/TextView;

.field g:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 199
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 200
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a068d

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->b:Landroid/view/View;

    const v0, 0x1020016

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0314

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->d:Landroid/widget/TextView;

    const v0, 0x1020010

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->e:Landroid/widget/TextView;

    const v0, 0x7f0a01b1

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->f:Landroid/widget/TextView;

    .line 206
    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->a:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 219
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->a:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a;

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ItemViewHolder;->g:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;

    invoke-interface {p1, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a;->onListItemClick(Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$a;)V

    return-void
.end method
