.class final Lcom/android/settings/ProxySelector$3;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/settings/ProxySelector;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/settings/ProxySelector$3;->a:Lcom/android/settings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 265
    iget-object p1, p0, Lcom/android/settings/ProxySelector$3;->a:Lcom/android/settings/ProxySelector;

    invoke-virtual {p1}, Lcom/android/settings/ProxySelector;->a()V

    return-void
.end method