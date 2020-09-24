.class final Lcom/android/settingslib/d$1;
.super Landroid/os/AsyncTask;
.source "NetworkPolicyEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Landroid/net/NetworkPolicy;

.field final synthetic b:Lcom/android/settingslib/d;


# direct methods
.method constructor <init>(Lcom/android/settingslib/d;[Landroid/net/NetworkPolicy;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settingslib/d$1;->b:Lcom/android/settingslib/d;

    iput-object p2, p0, Lcom/android/settingslib/d$1;->a:[Landroid/net/NetworkPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1089
    iget-object p1, p0, Lcom/android/settingslib/d$1;->b:Lcom/android/settingslib/d;

    iget-object v0, p0, Lcom/android/settingslib/d$1;->a:[Landroid/net/NetworkPolicy;

    .line 1096
    iget-object p1, p1, Lcom/android/settingslib/d;->a:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p1, v0}, Landroid/net/NetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    const/4 p1, 0x0

    return-object p1
.end method
