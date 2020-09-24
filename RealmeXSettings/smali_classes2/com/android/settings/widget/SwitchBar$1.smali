.class final Lcom/android/settings/widget/SwitchBar$1;
.super Ljava/lang/Object;
.source "SwitchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SwitchBar;Landroid/content/Context;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar$1;->b:Lcom/android/settings/widget/SwitchBar;

    iput-object p2, p0, Lcom/android/settings/widget/SwitchBar$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 150
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar$1;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-static {p1}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar$1;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-static {p1}, Lcom/android/settings/widget/SwitchBar;->c(Lcom/android/settings/widget/SwitchBar;)Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x355

    const/4 v3, 0x0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/widget/SwitchBar$1;->b:Lcom/android/settings/widget/SwitchBar;

    .line 155
    invoke-static {v4}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/SwitchBar;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/switch_bar|restricted"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 151
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 158
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBar$1;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/widget/SwitchBar$1;->b:Lcom/android/settings/widget/SwitchBar;

    .line 159
    invoke-static {v0}, Lcom/android/settings/widget/SwitchBar;->d(Lcom/android/settings/widget/SwitchBar;)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 158
    invoke-static {p1, v0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    :cond_0
    return-void
.end method
