.class Lcolor/support/v7/internal/widget/AdapterViewCompat$SelectionNotifier;
.super Ljava/lang/Object;
.source "AdapterViewCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/internal/widget/AdapterViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;


# direct methods
.method private constructor <init>(Lcolor/support/v7/internal/widget/AdapterViewCompat;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$SelectionNotifier;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcolor/support/v7/internal/widget/AdapterViewCompat;Lcolor/support/v7/internal/widget/AdapterViewCompat$1;)V
    .locals 0

    .line 854
    invoke-direct {p0, p1}, Lcolor/support/v7/internal/widget/AdapterViewCompat$SelectionNotifier;-><init>(Lcolor/support/v7/internal/widget/AdapterViewCompat;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 856
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$SelectionNotifier;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    iget-boolean v0, v0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$SelectionNotifier;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$SelectionNotifier;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    invoke-virtual {v0, p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 864
    :cond_0
    iget-object p0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$SelectionNotifier;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    invoke-static {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->access$200(Lcolor/support/v7/internal/widget/AdapterViewCompat;)V

    :cond_1
    :goto_0
    return-void
.end method
