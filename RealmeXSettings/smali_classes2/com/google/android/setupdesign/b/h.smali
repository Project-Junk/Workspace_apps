.class public final Lcom/google/android/setupdesign/b/h;
.super Ljava/lang/Object;
.source "RecyclerViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/google/android/setupdesign/b/i$b;


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/google/android/setupdesign/b/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/b/i;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Lcom/google/android/setupdesign/b/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/setupdesign/b/h;->b:Lcom/google/android/setupdesign/b/i;

    .line 40
    iput-object p2, p0, Lcom/google/android/setupdesign/b/h;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
