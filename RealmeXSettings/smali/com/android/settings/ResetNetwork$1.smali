.class final Lcom/android/settings/ResetNetwork$1;
.super Ljava/lang/Object;
.source "ResetNetwork.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/ResetNetwork;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetwork;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/settings/ResetNetwork$1;->a:Lcom/android/settings/ResetNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 144
    iget-object p1, p0, Lcom/android/settings/ResetNetwork$1;->a:Lcom/android/settings/ResetNetwork;

    invoke-static {p1}, Lcom/android/settings/ResetNetwork;->a(Lcom/android/settings/ResetNetwork;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/android/settings/ResetNetwork$1;->a:Lcom/android/settings/ResetNetwork;

    invoke-virtual {p1}, Lcom/android/settings/ResetNetwork;->a()V

    :cond_0
    return-void
.end method
