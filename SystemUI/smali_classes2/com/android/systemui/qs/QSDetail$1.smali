.class Lcom/android/systemui/qs/QSDetail$1;
.super Ljava/lang/Object;
.source "QSDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSDetail;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSDetail;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 132
    iget-object p1, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    .line 133
    invoke-static {p1}, Lcom/android/systemui/qs/QSDetail;->access$000(Lcom/android/systemui/qs/QSDetail;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110065

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSDetail;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 134
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetail$1;->this$0:Lcom/android/systemui/qs/QSDetail;

    invoke-static {p0}, Lcom/android/systemui/qs/QSDetail;->access$100(Lcom/android/systemui/qs/QSDetail;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    return-void
.end method
