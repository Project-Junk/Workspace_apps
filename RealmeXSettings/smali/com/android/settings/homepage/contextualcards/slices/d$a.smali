.class final Lcom/android/settings/homepage/contextualcards/slices/d$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SliceFullCardRendererHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/slices/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/slice/widget/SliceView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 87
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a061c

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/slice/widget/SliceView;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/d$a;->a:Landroidx/slice/widget/SliceView;

    return-void
.end method
