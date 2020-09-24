.class public final Lcom/android/settings/wifi/c;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Landroid/widget/Spinner;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/Spinner;

.field private I:Landroid/widget/Spinner;

.field private J:Landroid/widget/Spinner;

.field private K:Landroid/widget/Spinner;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/CheckBox;

.field private R:Landroid/widget/CheckBox;

.field private S:Landroid/net/IpConfiguration$IpAssignment;

.field private T:Landroid/net/IpConfiguration$ProxySettings;

.field private U:Landroid/net/ProxyInfo;

.field private V:Landroid/net/StaticIpConfiguration;

.field private W:[Ljava/lang/String;

.field private X:Landroid/widget/TextView;

.field private Y:Landroid/content/Context;

.field private final Z:Landroid/net/wifi/WifiManager;

.field final a:Lcom/android/settings/wifi/d;

.field private aa:Landroid/telephony/TelephonyManager;

.field private ab:Landroid/telephony/SubscriptionManager;

.field private ac:I

.field private ad:[Ljava/lang/Integer;

.field b:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:I

.field private final d:Landroid/view/View;

.field private final e:Lcom/android/settingslib/wifi/a;

.field private f:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/ImageButton;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Landroid/widget/ScrollView;

.field private q:Landroid/widget/Spinner;

.field private r:Landroid/widget/Spinner;

.field private s:Landroid/widget/Spinner;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/Spinner;

.field private v:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/widget/Spinner;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/d;Landroid/view/View;Lcom/android/settingslib/wifi/a;I)V
    .locals 11

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/c;->S:Landroid/net/IpConfiguration$IpAssignment;

    .line 187
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/c;->T:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/android/settings/wifi/c;->U:Landroid/net/ProxyInfo;

    .line 189
    iput-object v0, p0, Lcom/android/settings/wifi/c;->V:Landroid/net/StaticIpConfiguration;

    .line 198
    iput-object v0, p0, Lcom/android/settings/wifi/c;->ab:Landroid/telephony/SubscriptionManager;

    .line 204
    iput-object p1, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    .line 206
    iput-object p2, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    .line 207
    iput-object p3, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 208
    iget-object p1, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    invoke-interface {p1}, Lcom/android/settings/wifi/d;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    .line 211
    iget-object p1, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/c;->Z:Landroid/net/wifi/WifiManager;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move p2, p1

    goto :goto_0

    .line 3014
    :cond_0
    iget p2, p3, Lcom/android/settingslib/wifi/a;->e:I

    .line 2230
    :goto_0
    iput p2, p0, Lcom/android/settings/wifi/c;->b:I

    .line 2231
    iput p4, p0, Lcom/android/settings/wifi/c;->c:I

    .line 2233
    iget-object p2, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 2235
    iget-object p3, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const-string p4, "phone"

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/android/settings/wifi/c;->aa:Landroid/telephony/TelephonyManager;

    .line 2236
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/settings/wifi/c;->A:Ljava/util/ArrayList;

    const p3, 0x7f03011c

    .line 2237
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/wifi/c;->W:[Ljava/lang/String;

    .line 2238
    iget-object p3, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/settingslib/l;->q(Landroid/content/Context;)Z

    move-result p3

    const p4, 0x1090008

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string v1, "com.android.internal.R.bool.config_eap_sim_based_auth_supported"

    .line 2239
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2238
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_1

    .line 2244
    :cond_1
    new-instance p3, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v2, 0x7f030117

    .line 2246
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v1, p4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/settings/wifi/c;->f:Landroid/widget/ArrayAdapter;

    goto :goto_2

    .line 2240
    :cond_2
    :goto_1
    new-instance p3, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v2, 0x7f030116

    .line 2242
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v1, p4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/settings/wifi/c;->f:Landroid/widget/ArrayAdapter;

    .line 2248
    :goto_2
    iget-object p3, p0, Lcom/android/settings/wifi/c;->f:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {p3, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2250
    new-instance p3, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v3, 0x7f030118

    .line 2252
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v2, p4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/settings/wifi/c;->g:Landroid/widget/ArrayAdapter;

    .line 2253
    iget-object p3, p0, Lcom/android/settings/wifi/c;->g:Landroid/widget/ArrayAdapter;

    invoke-virtual {p3, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2255
    iget-object p3, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v2, 0x7f121a77

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/wifi/c;->k:Ljava/lang/String;

    .line 2256
    iget-object p3, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v2, 0x7f1219e8

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/wifi/c;->l:Ljava/lang/String;

    .line 2257
    iget-object p3, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v2, 0x7f121a79

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/wifi/c;->m:Ljava/lang/String;

    .line 2258
    iget-object p3, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v2, 0x7f121982

    .line 2259
    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/wifi/c;->n:Ljava/lang/String;

    .line 2260
    iget-object p3, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v2, 0x7f121983

    .line 2261
    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/wifi/c;->o:Ljava/lang/String;

    .line 2263
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a0641

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/android/settings/wifi/c;->i:Landroid/widget/ImageButton;

    .line 2264
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a04bf

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/android/settings/wifi/c;->j:Landroid/widget/ImageButton;

    .line 2265
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a01f6

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ScrollView;

    iput-object p3, p0, Lcom/android/settings/wifi/c;->p:Landroid/widget/ScrollView;

    .line 2266
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a033c

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/android/settings/wifi/c;->B:Landroid/widget/Spinner;

    .line 2267
    iget-object p3, p0, Lcom/android/settings/wifi/c;->B:Landroid/widget/Spinner;

    invoke-virtual {p3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2268
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a0531

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/android/settings/wifi/c;->H:Landroid/widget/Spinner;

    .line 2269
    iget-object p3, p0, Lcom/android/settings/wifi/c;->H:Landroid/widget/Spinner;

    invoke-virtual {p3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2270
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a05fc

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/settings/wifi/c;->Q:Landroid/widget/CheckBox;

    .line 2271
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a03ea

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/android/settings/wifi/c;->I:Landroid/widget/Spinner;

    .line 2272
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a02f8

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/android/settings/wifi/c;->J:Landroid/widget/Spinner;

    .line 2273
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a050b

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/android/settings/wifi/c;->K:Landroid/widget/Spinner;

    .line 2274
    iget-object p3, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string v2, "com.android.internal.R.bool.config_wifi_connected_mac_randomization_supported"

    .line 2275
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2274
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 2276
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a050c

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 2277
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2279
    :cond_3
    iget-object p3, p0, Lcom/android/settings/wifi/c;->J:Landroid/widget/Spinner;

    invoke-virtual {p3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2280
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a02fb

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/wifi/c;->L:Landroid/widget/TextView;

    .line 2281
    iget-object p3, p0, Lcom/android/settings/wifi/c;->L:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/c;->J:Landroid/widget/Spinner;

    .line 2282
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    move v2, p1

    .line 2281
    :goto_3
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2285
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a05fb

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/settings/wifi/c;->R:Landroid/widget/CheckBox;

    const/16 p3, 0xc

    .line 2286
    new-array p3, p3, [Ljava/lang/Integer;

    iput-object p3, p0, Lcom/android/settings/wifi/c;->ad:[Ljava/lang/Integer;

    .line 2288
    iget-object p3, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    const v2, 0x7f121a0f

    const v4, 0x7f0a07a9

    const v5, 0x7f0a07a8

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez p3, :cond_8

    .line 3692
    iget-object p3, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    const v0, 0x7f121918

    invoke-interface {p3, v0}, Lcom/android/settings/wifi/d;->setTitle(I)V

    .line 3694
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v0, 0x7f0a0640

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/wifi/c;->X:Landroid/widget/TextView;

    .line 3695
    iget-object p3, p0, Lcom/android/settings/wifi/c;->X:Landroid/widget/TextView;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3696
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v0, 0x7f0a05d2

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/android/settings/wifi/c;->q:Landroid/widget/Spinner;

    .line 3697
    iget-object p3, p0, Lcom/android/settings/wifi/c;->q:Landroid/widget/Spinner;

    invoke-virtual {p3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3699
    new-instance p3, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v8, 0x1020014

    invoke-direct {p3, v0, p4, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 3701
    invoke-virtual {p3, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 3702
    iget-object p4, p0, Lcom/android/settings/wifi/c;->q:Landroid/widget/Spinner;

    invoke-virtual {p4, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3706
    iget-object p4, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v0, 0x7f121a24

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 3707
    iget-object p4, p0, Lcom/android/settings/wifi/c;->ad:[Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, p1

    .line 3708
    iget-object p4, p0, Lcom/android/settings/wifi/c;->Z:Landroid/net/wifi/WifiManager;

    invoke-virtual {p4}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 3709
    iget-object p4, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v0, 0x7f121a25

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 3710
    iget-object p4, p0, Lcom/android/settings/wifi/c;->ad:[Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, v7

    move p4, v6

    goto :goto_4

    :cond_5
    move p4, v7

    .line 3712
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v1, 0x7f121a3d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 3713
    iget-object v0, p0, Lcom/android/settings/wifi/c;->ad:[Ljava/lang/Integer;

    add-int/lit8 v1, p4, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, p4

    .line 3714
    iget-object p4, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v0, 0x7f121a40

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 3715
    iget-object p4, p0, Lcom/android/settings/wifi/c;->ad:[Ljava/lang/Integer;

    add-int/lit8 v0, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, p4, v1

    .line 3716
    iget-object p4, p0, Lcom/android/settings/wifi/c;->Z:Landroid/net/wifi/WifiManager;

    invoke-virtual {p4}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p4

    if-eqz p4, :cond_6

    .line 3717
    iget-object p4, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v1, 0x7f121a29

    invoke-virtual {p4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 3718
    iget-object p4, p0, Lcom/android/settings/wifi/c;->ad:[Ljava/lang/Integer;

    add-int/lit8 v1, v0, 0x1

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, p4, v0

    move v0, v1

    .line 3720
    :cond_6
    iget-object p4, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v1, 0x7f121a20

    invoke-virtual {p4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 3721
    iget-object p4, p0, Lcom/android/settings/wifi/c;->ad:[Ljava/lang/Integer;

    add-int/lit8 v1, v0, 0x1

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, p4, v0

    .line 3722
    iget-object p4, p0, Lcom/android/settings/wifi/c;->Z:Landroid/net/wifi/WifiManager;

    invoke-virtual {p4}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 3723
    iget-object p4, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v0, 0x7f121a21

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 3724
    iget-object p4, p0, Lcom/android/settings/wifi/c;->ad:[Ljava/lang/Integer;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, v1

    .line 3727
    :cond_7
    invoke-virtual {p3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 3729
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const p4, 0x7f0a074d

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3731
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->r()V

    .line 3732
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->s()V

    .line 3733
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3735
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const p4, 0x7f0a02f9

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3736
    iget-object p1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 3737
    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2290
    iget-object p1, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/android/settings/wifi/d;->a(Ljava/lang/CharSequence;)V

    .line 2291
    iget-object p1, p0, Lcom/android/settings/wifi/c;->j:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_10

    .line 2296
    :cond_8
    iget-object p3, p0, Lcom/android/settings/wifi/c;->Z:Landroid/net/wifi/WifiManager;

    invoke-static {p3}, Lcom/coloros/b/a;->a(Landroid/net/wifi/WifiManager;)Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 4014
    iget p3, p3, Lcom/android/settingslib/wifi/a;->e:I

    if-eqz p3, :cond_a

    .line 2297
    iget-object p3, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 5014
    iget p3, p3, Lcom/android/settingslib/wifi/a;->e:I

    if-eq p3, v6, :cond_a

    .line 2299
    :cond_9
    iget-object p3, p0, Lcom/android/settings/wifi/c;->R:Landroid/widget/CheckBox;

    invoke-virtual {p3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2300
    iget-object p3, p0, Lcom/android/settings/wifi/c;->R:Landroid/widget/CheckBox;

    invoke-virtual {p3, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2303
    :cond_a
    iget-object p3, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    iget-object p4, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p4}, Lcom/android/settingslib/wifi/a;->i()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/android/settings/wifi/d;->setTitle(Ljava/lang/CharSequence;)V

    .line 2305
    iget-object p3, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const p4, 0x7f0a032d

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 2308
    iget-object p4, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p4}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result p4

    if-eqz p4, :cond_10

    .line 2309
    iget-object p4, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 5764
    iget-object p4, p4, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 2310
    iget-object v1, p0, Lcom/android/settings/wifi/c;->I:Landroid/widget/Spinner;

    iget v8, p4, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2311
    iget-object v1, p0, Lcom/android/settings/wifi/c;->J:Landroid/widget/Spinner;

    iget-boolean v8, p4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v1, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2315
    iget v1, p4, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 2316
    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->translateMacRandomizedValueToPrefValue(I)I

    move-result v1

    .line 2318
    iget-object v8, p0, Lcom/android/settings/wifi/c;->K:Landroid/widget/Spinner;

    invoke-virtual {v8, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2320
    invoke-virtual {p4}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    sget-object v8, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v8, :cond_c

    .line 2321
    iget-object v1, p0, Lcom/android/settings/wifi/c;->B:Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2324
    invoke-virtual {p4}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 2325
    iget-object v8, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v8, :cond_b

    const v8, 0x7f1219d0

    .line 2326
    iget-object v1, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 2327
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 2326
    invoke-direct {p0, p3, v8, v1}, Lcom/android/settings/wifi/c;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_b
    move v1, v7

    goto :goto_5

    .line 2330
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/c;->B:Landroid/widget/Spinner;

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    move v1, p1

    .line 2334
    :goto_5
    iget-object v8, p0, Lcom/android/settings/wifi/c;->R:Landroid/widget/CheckBox;

    const-string v9, "shareThisAp"

    .line 6136
    invoke-static {p4, v9}, Lcom/coloros/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 2334
    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2335
    iget-object v8, p0, Lcom/android/settings/wifi/c;->Q:Landroid/widget/CheckBox;

    iget-boolean v9, p4, Landroid/net/wifi/WifiConfiguration;->shared:Z

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2336
    iget-boolean v8, p4, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v8, :cond_d

    move v1, v7

    .line 2340
    :cond_d
    invoke-virtual {p4}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v8

    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v8, v9, :cond_e

    .line 2341
    iget-object v1, p0, Lcom/android/settings/wifi/c;->H:Landroid/widget/Spinner;

    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_6
    move v1, v7

    goto :goto_7

    .line 2343
    :cond_e
    invoke-virtual {p4}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v8

    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v8, v9, :cond_f

    .line 2344
    iget-object v1, p0, Lcom/android/settings/wifi/c;->H:Landroid/widget/Spinner;

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_6

    .line 2347
    :cond_f
    iget-object v8, p0, Lcom/android/settings/wifi/c;->H:Landroid/widget/Spinner;

    invoke-virtual {v8, p1}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_7
    if-eqz p4, :cond_11

    .line 2349
    invoke-virtual {p4}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v8

    if-eqz v8, :cond_11

    const v8, 0x7f120ffb

    .line 2350
    iget-object v9, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v10, 0x7f120ffa

    .line 2351
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    iget-object p4, p4, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object p4, v10, p1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 2350
    invoke-direct {p0, p3, v8, p4}, Lcom/android/settings/wifi/c;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_8

    :cond_10
    move v1, p1

    .line 2356
    :cond_11
    :goto_8
    iget-object p4, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p4}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result p4

    if-nez p4, :cond_12

    iget-object p4, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p4}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result p4

    if-nez p4, :cond_12

    iget-object p4, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 2357
    invoke-virtual {p4}, Lcom/android/settingslib/wifi/a;->n()Z

    move-result p4

    if-eqz p4, :cond_13

    :cond_12
    iget p4, p0, Lcom/android/settings/wifi/c;->c:I

    if-eqz p4, :cond_16

    .line 2359
    :cond_13
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->g()V

    .line 2360
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->r()V

    .line 2361
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->s()V

    .line 2362
    iget-object p4, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    .line 2363
    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/CheckBox;

    .line 2364
    iget-object v4, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 7130
    iget-boolean v5, v5, Lcom/android/settingslib/wifi/a;->q:Z

    if-eqz v5, :cond_14

    move v5, v3

    goto :goto_9

    :cond_14
    move v5, p1

    .line 2364
    :goto_9
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2366
    invoke-virtual {p4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2367
    invoke-virtual {p4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2368
    iget-object p4, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v4, 0x7f0a07a7

    invoke-virtual {p4, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    if-eqz v1, :cond_15

    move v1, p1

    goto :goto_a

    :cond_15
    move v1, v3

    .line 2369
    :goto_a
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2370
    iget-object p4, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 8130
    iget-boolean p4, p4, Lcom/android/settingslib/wifi/a;->q:Z

    if-eqz p4, :cond_16

    const p4, 0x7f12194a

    .line 2371
    iget-object v1, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v4, 0x7f12194b

    .line 2372
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 8138
    iget-object v5, v5, Lcom/android/settingslib/wifi/a;->s:Ljava/lang/String;

    aput-object v5, v4, p1

    .line 2372
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2371
    invoke-direct {p0, p3, p4, v1}, Lcom/android/settings/wifi/c;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2377
    :cond_16
    iget p4, p0, Lcom/android/settings/wifi/c;->c:I

    if-ne p4, v6, :cond_17

    .line 2378
    iget-object p1, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/android/settings/wifi/d;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_17
    const v1, 0x7f121953

    if-ne p4, v7, :cond_18

    .line 2380
    iget-object p1, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/android/settings/wifi/d;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 2382
    :cond_18
    iget-object p4, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p4}, Lcom/android/settingslib/wifi/a;->g()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p4

    .line 8484
    iget-object v2, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/a;->s()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 8487
    iget-object v2, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/a;->c()I

    move-result v2

    if-ltz v2, :cond_19

    .line 8489
    iget-object v4, p0, Lcom/android/settings/wifi/c;->W:[Ljava/lang/String;

    array-length v5, v4

    if-ge v2, v5, :cond_19

    aget-object v2, v4, v2

    goto :goto_b

    :cond_19
    move-object v2, v0

    :goto_b
    if-eqz p4, :cond_1a

    .line 2385
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p4, v4, :cond_1b

    :cond_1a
    if-eqz v2, :cond_1b

    .line 2386
    iget-object p1, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/android/settings/wifi/d;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_1b
    if-eqz p4, :cond_1f

    .line 2389
    iget-object v1, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/a;->l()Z

    move-result v1

    .line 2390
    iget-object v4, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 8764
    iget-object v4, v4, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_1c

    .line 2392
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2393
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    :cond_1c
    if-eqz v4, :cond_1e

    .line 2396
    iget-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    if-nez v5, :cond_1d

    iget-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz v5, :cond_1e

    .line 2399
    :cond_1d
    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    goto :goto_c

    :cond_1e
    move-object v4, v0

    .line 2401
    :goto_c
    iget-object v5, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    .line 2402
    invoke-interface {v5}, Lcom/android/settings/wifi/d;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 2401
    invoke-static {v5, p4, v1, v4}, Lcom/android/settingslib/wifi/a;->a(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const v1, 0x7f121a62

    .line 2404
    invoke-direct {p0, p3, v1, p4}, Lcom/android/settings/wifi/c;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_1f
    if-eqz v2, :cond_20

    const p4, 0x7f121a55

    .line 2408
    invoke-direct {p0, p3, p4, v2}, Lcom/android/settings/wifi/c;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2411
    :cond_20
    iget-object p4, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 8845
    iget-object p4, p4, Lcom/android/settingslib/wifi/a;->k:Landroid/net/wifi/WifiInfo;

    const/4 v1, -0x1

    if-eqz p4, :cond_21

    .line 2412
    invoke-virtual {p4}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result v2

    if-eq v2, v1, :cond_21

    const v2, 0x7f12174e

    const v4, 0x7f12174c

    .line 2414
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p4}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p1

    .line 2413
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p3, v2, v4}, Lcom/android/settings/wifi/c;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_21
    if-eqz p4, :cond_22

    .line 2417
    invoke-virtual {p4}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v2

    if-eq v2, v1, :cond_22

    const v2, 0x7f1212c0

    const v4, 0x7f1212be

    .line 2419
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p4}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p1

    .line 2418
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p3, v2, v4}, Lcom/android/settings/wifi/c;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_22
    if-eqz p4, :cond_25

    .line 2422
    invoke-virtual {p4}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    if-eq v2, v1, :cond_25

    .line 2423
    invoke-virtual {p4}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p4

    const/16 v1, 0x960

    if-lt p4, v1, :cond_23

    const/16 v1, 0x9c4

    if-ge p4, v1, :cond_23

    const p4, 0x7f121933

    .line 2428
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_23
    const/16 v1, 0x1324

    if-lt p4, v1, :cond_24

    const/16 v1, 0x170c

    if-ge p4, v1, :cond_24

    const p4, 0x7f121934

    .line 2431
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 2433
    :cond_24
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string v1, "Unexpected frequency "

    invoke-virtual {v1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v1, "WifiConfigController"

    invoke-static {v1, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    if-eqz v0, :cond_25

    const p4, 0x7f1219b5

    .line 2436
    invoke-direct {p0, p3, p4, v0}, Lcom/android/settings/wifi/c;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    :cond_25
    const p4, 0x7f121a1c

    .line 2440
    iget-object v0, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/a;->a(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p4, p1}, Lcom/android/settings/wifi/c;->a(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2441
    iget-object p1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const p3, 0x7f0a033b

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2443
    :goto_e
    iget-object p1, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result p1

    if-nez p1, :cond_26

    iget-object p1, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result p1

    if-nez p1, :cond_26

    iget-object p1, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 2444
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->n()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 2445
    :cond_26
    iget-object p1, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    const p3, 0x7f1219b2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/android/settings/wifi/d;->c(Ljava/lang/CharSequence;)V

    .line 2449
    :cond_27
    :goto_f
    iget-object p1, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    iget p3, p0, Lcom/android/settings/wifi/c;->b:I

    invoke-static {p1, p3}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_28

    .line 2450
    iget-object p1, p0, Lcom/android/settings/wifi/c;->j:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2452
    :cond_28
    iget-object p1, p0, Lcom/android/settings/wifi/c;->i:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 9470
    :goto_10
    iget-object p1, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const-string p3, "user"

    .line 9471
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9472
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result p1

    if-nez p1, :cond_29

    .line 2456
    iget-object p1, p0, Lcom/android/settings/wifi/c;->Q:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2459
    :cond_29
    iget-object p1, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    const p3, 0x7f121947

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/settings/wifi/d;->b(Ljava/lang/CharSequence;)V

    .line 2460
    iget-object p1, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    invoke-interface {p1}, Lcom/android/settings/wifi/d;->b()Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 2461
    invoke-virtual {p0}, Lcom/android/settings/wifi/c;->a()V

    .line 2465
    :cond_2a
    iget-object p1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const p2, 0x7f0a036f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private a(I)I
    .locals 1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 627
    iget-object p1, p0, Lcom/android/settings/wifi/c;->Z:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 634
    iget-object p1, p0, Lcom/android/settings/wifi/c;->Z:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    const/4 p1, 0x0

    :cond_3
    return p1
.end method

.method private a(Landroid/net/StaticIpConfiguration;)I
    .locals 6

    .line 948
    iget-object v0, p0, Lcom/android/settings/wifi/c;->C:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 950
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 951
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f1219d5

    if-eqz v2, :cond_1

    return v3

    .line 953
    :cond_1
    invoke-static {v0}, Lcom/android/settings/wifi/c;->c(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 954
    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    :cond_2
    const/4 v2, -0x1

    .line 960
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/wifi/c;->E:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    const/16 v4, 0x20

    if-le v2, v4, :cond_3

    goto :goto_0

    .line 964
    :cond_3
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v0, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_0
    const p1, 0x7f1219d6

    return p1

    :catch_0
    return v3

    .line 967
    :catch_1
    iget-object v3, p0, Lcom/android/settings/wifi/c;->E:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    invoke-interface {v4}, Lcom/android/settings/wifi/d;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1219eb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/c;->D:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 974
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 977
    :try_start_1
    invoke-static {v0, v2}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 978
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 979
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput-byte v3, v0, v2

    .line 980
    iget-object v2, p0, Lcom/android/settings/wifi/c;->D:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 985
    :cond_5
    invoke-static {v3}, Lcom/android/settings/wifi/c;->c(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    const v2, 0x7f1219d4

    if-nez v0, :cond_6

    return v2

    .line 989
    :cond_6
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_7

    return v2

    .line 992
    :cond_7
    iput-object v0, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 995
    :catch_2
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/c;->F:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 998
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f1219d3

    if-eqz v2, :cond_8

    .line 1000
    iget-object v0, p0, Lcom/android/settings/wifi/c;->F:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    invoke-interface {v2}, Lcom/android/settings/wifi/d;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f12197f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1002
    :cond_8
    invoke-static {v0}, Lcom/android/settings/wifi/c;->c(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_9

    return v3

    .line 1006
    :cond_9
    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/c;->G:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 1010
    iget-object v0, p0, Lcom/android/settings/wifi/c;->G:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1011
    invoke-static {v0}, Lcom/android/settings/wifi/c;->c(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_a

    return v3

    .line 1015
    :cond_a
    iget-object p1, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return v1

    :cond_c
    :goto_4
    return v3
.end method

.method private a(II)V
    .locals 1

    .line 1482
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1484
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    invoke-interface {v0}, Lcom/android/settings/wifi/d;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03a2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0442

    .line 477
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f0a077c

    .line 478
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static a(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1527
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1528
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1529
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1530
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    .line 1499
    iget-object v0, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    invoke-interface {v0}, Lcom/android/settings/wifi/d;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1501
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1502
    iget-object v2, p0, Lcom/android/settings/wifi/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    .line 1504
    iget-object p4, p0, Lcom/android/settings/wifi/c;->l:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p5, :cond_1

    .line 1507
    iget-object p4, p0, Lcom/android/settings/wifi/c;->m:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22490
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p4

    const/16 p5, 0x3f2

    .line 1511
    invoke-virtual {p4, p2, p5}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1510
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "WifiConfigController"

    const-string p4, "can\'t get the certificate list from KeyStore"

    .line 1513
    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :goto_0
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1517
    new-instance p2, Landroid/widget/ArrayAdapter;

    const p3, 0x1090008

    .line 1519
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p4

    new-array p4, p4, [Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    invoke-direct {p2, v0, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p3, 0x1090009

    .line 1520
    invoke-virtual {p2, p3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1521
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .line 515
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x40

    if-ne v0, v2, :cond_0

    const-string v0, "[0-9A-Fa-f]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 517
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private b(I)V
    .locals 7

    .line 1219
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a036b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1220
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a036a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1221
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a0369

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1225
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a0368

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v3, 0x7f0a04bd

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v3, 0x7f0a0605

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    iget-object v0, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    invoke-interface {v0}, Lcom/android/settings/wifi/d;->getContext()Landroid/content/Context;

    const v0, 0x7f0a0367

    const v3, 0x7f0a036c

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 p1, 0x0

    .line 1273
    iget-object v0, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    if-eqz v0, :cond_0

    .line 16764
    iget-object p1, v0, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 1276
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v4, 0x1090008

    iget-object v5, p0, Lcom/android/settings/wifi/c;->A:Ljava/util/ArrayList;

    .line 1278
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v3, 0x1090009

    .line 1280
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1282
    iget-object v3, p0, Lcom/android/settings/wifi/c;->z:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1283
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v3, 0x7f0a036d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 1285
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 17744
    invoke-static {v0}, Lcom/coloros/b/a;->a(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1285
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 18744
    invoke-static {v0}, Lcom/coloros/b/a;->a(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v0

    .line 1286
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1287
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 19744
    invoke-static {p1}, Lcom/coloros/b/a;->a(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object p1

    .line 1287
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1288
    iget-object v0, p0, Lcom/android/settings/wifi/c;->z:Landroid/widget/Spinner;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1290
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/c;->z:Landroid/widget/Spinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1293
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->k()V

    .line 1294
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->o()V

    .line 1295
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->l()V

    .line 1296
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->m()V

    .line 1297
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->n()V

    .line 1298
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->p()V

    .line 1299
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->j()V

    .line 1300
    iget-object p1, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    if-eqz p1, :cond_5

    .line 20130
    iget-boolean p1, p1, Lcom/android/settingslib/wifi/a;->q:Z

    if-eqz p1, :cond_5

    .line 1301
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->q()V

    goto/16 :goto_1

    .line 1232
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->k()V

    .line 1233
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->l()V

    .line 1234
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->m()V

    .line 1235
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->o()V

    .line 1236
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->n()V

    .line 1237
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->i()V

    goto :goto_1

    .line 1260
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/c;->v:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/wifi/c;->g:Landroid/widget/ArrayAdapter;

    if-eq p1, v4, :cond_3

    .line 1261
    iput-object v4, p0, Lcom/android/settings/wifi/c;->v:Landroid/widget/ArrayAdapter;

    .line 1262
    iget-object p1, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/wifi/c;->v:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1264
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1265
    iget-object p1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1266
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->n()V

    .line 1267
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->i()V

    goto :goto_1

    .line 1240
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v0, 0x7f0a036e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1241
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->k()V

    .line 1242
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->o()V

    .line 1243
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->p()V

    .line 1244
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->i()V

    goto :goto_1

    .line 1248
    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/wifi/c;->v:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/wifi/c;->f:Landroid/widget/ArrayAdapter;

    if-eq p1, v4, :cond_4

    .line 1249
    iput-object v4, p0, Lcom/android/settings/wifi/c;->v:Landroid/widget/ArrayAdapter;

    .line 1250
    iget-object p1, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/wifi/c;->v:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1252
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1253
    iget-object p1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1254
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->h()V

    .line 1255
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->n()V

    .line 1256
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->i()V

    .line 1306
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_7

    .line 1307
    iget-object p1, p0, Lcom/android/settings/wifi/c;->s:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1308
    iget-object v0, p0, Lcom/android/settings/wifi/c;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/c;->k:Ljava/lang/String;

    .line 1309
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1312
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->m()V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .line 524
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 0

    .line 941
    :try_start_0
    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private d()Z
    .locals 7

    .line 533
    iget-object v0, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/settings/wifi/c;->b:I

    if-ne v3, v1, :cond_0

    .line 535
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/c;->b:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    .line 537
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/c;->b:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    .line 539
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 542
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/c;->X:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    if-eqz v0, :cond_5

    .line 544
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    if-nez v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    if-eqz v0, :cond_7

    .line 547
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    .line 548
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_7

    goto :goto_1

    .line 551
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->f()Z

    move-result v0

    goto :goto_2

    :cond_8
    :goto_1
    move v0, v2

    .line 553
    :goto_2
    iget v1, p0, Lcom/android/settings/wifi/c;->b:I

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/16 v5, 0x8

    if-eq v1, v4, :cond_9

    if-ne v1, v3, :cond_b

    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/c;->s:Landroid/widget/Spinner;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v6, 0x7f0a0368

    .line 556
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_b

    .line 557
    iget-object v1, p0, Lcom/android/settings/wifi/c;->s:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 558
    iget-object v6, p0, Lcom/android/settings/wifi/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v0, v2

    .line 563
    :cond_a
    iget-object v6, p0, Lcom/android/settings/wifi/c;->m:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/wifi/c;->t:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v6, 0x7f0a0369

    .line 565
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_b

    iget-object v1, p0, Lcom/android/settings/wifi/c;->t:Landroid/widget/TextView;

    .line 566
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v0, v2

    .line 572
    :cond_b
    iget v1, p0, Lcom/android/settings/wifi/c;->b:I

    if-eq v1, v4, :cond_c

    if-ne v1, v3, :cond_d

    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/c;->w:Landroid/widget/Spinner;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v3, 0x7f0a036e

    .line 575
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_d

    iget-object v1, p0, Lcom/android/settings/wifi/c;->w:Landroid/widget/Spinner;

    .line 576
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v0, v2

    :cond_d
    return v0
.end method

.method private e()V
    .locals 6

    .line 585
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a0465

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v3, 0x7f0a0467

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v4, 0x7f0a0642

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/android/settings/wifi/c;->X:Landroid/widget/TextView;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    invoke-static {v0}, Lcom/android/settings/wifi/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/c;->s:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v4, 0x7f0a0368

    .line 596
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 597
    iget-object v0, p0, Lcom/android/settings/wifi/c;->s:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 598
    iget-object v4, p0, Lcom/android/settings/wifi/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 601
    iget-object v4, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 603
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/c;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a0369

    .line 605
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/c;->t:Landroid/widget/TextView;

    .line 606
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private f()Z
    .locals 6

    .line 889
    iget-object v0, p0, Lcom/android/settings/wifi/c;->B:Landroid/widget/Spinner;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 891
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/c;->S:Landroid/net/IpConfiguration$IpAssignment;

    .line 895
    iget-object v0, p0, Lcom/android/settings/wifi/c;->S:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 896
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/c;->V:Landroid/net/StaticIpConfiguration;

    .line 897
    iget-object v0, p0, Lcom/android/settings/wifi/c;->V:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/c;->a(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/c;->H:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 904
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/c;->T:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v2, 0x0

    .line 905
    iput-object v2, p0, Lcom/android/settings/wifi/c;->U:Landroid/net/ProxyInfo;

    if-ne v0, v1, :cond_3

    .line 906
    iget-object v2, p0, Lcom/android/settings/wifi/c;->M:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 907
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/c;->T:Landroid/net/IpConfiguration$ProxySettings;

    .line 908
    iget-object v0, p0, Lcom/android/settings/wifi/c;->M:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 909
    iget-object v2, p0, Lcom/android/settings/wifi/c;->N:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 910
    iget-object v4, p0, Lcom/android/settings/wifi/c;->O:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 914
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :try_start_1
    invoke-static {v0, v2, v4}, Lcom/android/settings/ProxySelector;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v5, v3

    :catch_1
    const v2, 0x7f121149

    :goto_1
    if-nez v2, :cond_2

    .line 920
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v0, v5, v4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/wifi/c;->U:Landroid/net/ProxyInfo;

    goto :goto_2

    :cond_2
    return v3

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 924
    iget-object v0, p0, Lcom/android/settings/wifi/c;->P:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 925
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/c;->T:Landroid/net/IpConfiguration$ProxySettings;

    .line 926
    iget-object v0, p0, Lcom/android/settings/wifi/c;->P:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 927
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    .line 930
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_5

    return v3

    .line 934
    :cond_5
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/settings/wifi/c;->U:Landroid/net/ProxyInfo;

    :cond_6
    :goto_2
    return v1
.end method

.method private g()V
    .locals 12

    .line 1021
    iget v0, p0, Lcom/android/settings/wifi/c;->b:I

    const v1, 0x7f0a05d3

    const/16 v2, 0x8

    if-eqz v0, :cond_17

    const/4 v6, 0x4

    if-eq v0, v6, :cond_17

    if-eq v0, v2, :cond_17

    const/16 v3, 0x9

    if-ne v0, v3, :cond_0

    goto/16 :goto_4

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    iget-object v0, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1031
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a04b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    .line 1032
    iget-object v0, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1033
    iget-object v0, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1034
    iget-object v0, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1035
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a0604

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1036
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1038
    iget-object v0, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    const v1, 0x7f121a75

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 1043
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/c;->b:I

    const v1, 0x7f0a0232

    const/4 v8, 0x3

    const/4 v9, 0x6

    if-eq v0, v8, :cond_2

    if-eq v0, v9, :cond_2

    .line 1045
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1049
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a04bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1050
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a0605

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1053
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    iget-object v0, p0, Lcom/android/settings/wifi/c;->r:Landroid/widget/Spinner;

    const/4 v10, 0x1

    if-nez v0, :cond_15

    .line 1056
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->t()V

    .line 1057
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a03ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/c;->r:Landroid/widget/Spinner;

    .line 1058
    iget-object v0, p0, Lcom/android/settings/wifi/c;->r:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1059
    iget-object v0, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/l;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.internal.R.bool.config_eap_sim_based_auth_supported"

    .line 1060
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1059
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1061
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1063
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    .line 1065
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1067
    iget-object v0, p0, Lcom/android/settings/wifi/c;->r:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1070
    :cond_4
    iget v0, p0, Lcom/android/settings/wifi/c;->b:I

    if-ne v0, v9, :cond_5

    .line 1071
    iget-object v0, p0, Lcom/android/settings/wifi/c;->r:Landroid/widget/Spinner;

    invoke-virtual {v0, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1072
    iget-object v0, p0, Lcom/android/settings/wifi/c;->r:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1075
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v11, 0x7f0a04d6

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    .line 1076
    iget-object v0, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1077
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a0111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/c;->s:Landroid/widget/Spinner;

    .line 1078
    iget-object v0, p0, Lcom/android/settings/wifi/c;->s:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1079
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a021c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/c;->t:Landroid/widget/TextView;

    .line 1080
    iget-object v0, p0, Lcom/android/settings/wifi/c;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1081
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a0768

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/c;->w:Landroid/widget/Spinner;

    .line 1082
    iget-object v0, p0, Lcom/android/settings/wifi/c;->w:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1083
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a060f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/c;->z:Landroid/widget/Spinner;

    .line 1084
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a0316

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/c;->x:Landroid/widget/TextView;

    .line 1085
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/c;->y:Landroid/widget/TextView;

    .line 1087
    iget-object v0, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    if-eqz v0, :cond_6

    .line 13130
    iget-boolean v0, v0, Lcom/android/settingslib/wifi/a;->q:Z

    if-eqz v0, :cond_6

    .line 1088
    iget-object v0, p0, Lcom/android/settings/wifi/c;->r:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 13134
    iget v1, v1, Lcom/android/settingslib/wifi/a;->r:I

    .line 1088
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1091
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/c;->s:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/wifi/c;->o:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v2, "CACERT_"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/c;->a(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1097
    iget-object v1, p0, Lcom/android/settings/wifi/c;->w:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/wifi/c;->n:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v2, "USRPKEY_"

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/c;->a(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1105
    iget-object v0, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1106
    iget-object v0, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 13764
    iget-object v0, v0, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 1106
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1107
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .line 1108
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v1

    .line 1109
    iget-object v2, p0, Lcom/android/settings/wifi/c;->r:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1110
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/c;->b(I)V

    const/4 v2, 0x5

    if-eqz v0, :cond_9

    if-eq v0, v6, :cond_7

    if-eq v0, v2, :cond_7

    if-eq v0, v9, :cond_7

    .line 1149
    iget-object v0, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 14744
    :cond_7
    invoke-static {v11}, Lcom/coloros/b/a;->a(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 15744
    invoke-static {v11}, Lcom/coloros/b/a;->a(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v0

    .line 1141
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 16744
    invoke-static {v11}, Lcom/coloros/b/a;->a(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v0

    .line 1142
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1143
    iget-object v1, p0, Lcom/android/settings/wifi/c;->z:Landroid/widget/Spinner;

    sub-int/2addr v0, v10

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1145
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/c;->z:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    :cond_9
    if-eqz v1, :cond_f

    if-eq v1, v8, :cond_e

    if-eq v1, v6, :cond_d

    if-eq v1, v2, :cond_c

    if-eq v1, v9, :cond_b

    const/4 v0, 0x7

    if-eq v1, v0, :cond_a

    .line 1133
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid phase 2 method "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConfigController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1130
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1127
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1124
    :cond_c
    iget-object v0, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1121
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1118
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    invoke-virtual {v0, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1115
    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1152
    :goto_0
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1153
    iget-object v0, p0, Lcom/android/settings/wifi/c;->s:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/c;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/c;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_1

    .line 1155
    :cond_10
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1157
    iget-object v0, p0, Lcom/android/settings/wifi/c;->s:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/c;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/c;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_1

    .line 1158
    :cond_11
    array-length v1, v0

    if-ne v1, v10, :cond_12

    .line 1159
    iget-object v1, p0, Lcom/android/settings/wifi/c;->s:Landroid/widget/Spinner;

    aget-object v0, v0, v7

    invoke-static {v1, v0}, Lcom/android/settings/wifi/c;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_1

    .line 1162
    :cond_12
    iget-object v1, p0, Lcom/android/settings/wifi/c;->s:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/wifi/c;->o:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v2, "CACERT_"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/c;->a(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1168
    iget-object v0, p0, Lcom/android/settings/wifi/c;->s:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/c;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/c;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1171
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/c;->t:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getDomainSuffixMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1174
    iget-object v0, p0, Lcom/android/settings/wifi/c;->w:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/c;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/c;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_2

    .line 1176
    :cond_13
    iget-object v1, p0, Lcom/android/settings/wifi/c;->w:Landroid/widget/Spinner;

    invoke-static {v1, v0}, Lcom/android/settings/wifi/c;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1178
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/c;->x:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    iget-object v0, p0, Lcom/android/settings/wifi/c;->y:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1181
    :cond_14
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    goto :goto_3

    .line 1185
    :cond_15
    iget v1, p0, Lcom/android/settings/wifi/c;->b:I

    if-ne v1, v9, :cond_16

    .line 1186
    invoke-virtual {v0, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1187
    iget-object v0, p0, Lcom/android/settings/wifi/c;->r:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_3

    .line 1189
    :cond_16
    invoke-virtual {v0, v10}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1191
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/c;->r:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/c;->b(I)V

    return-void

    .line 1025
    :cond_17
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private h()V
    .locals 3

    .line 1320
    iget-object v0, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const v1, 0x7f0a036a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1328
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a0367

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a04bd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1330
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a0605

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1323
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/c;->x:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1325
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->p()V

    return-void
.end method

.method private i()V
    .locals 2

    .line 1335
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a036d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 1339
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a036a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1340
    iget-object v0, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private k()V
    .locals 2

    .line 1344
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a036c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1345
    iget-object v0, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 1349
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a0368

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1350
    iget-object v0, p0, Lcom/android/settings/wifi/c;->s:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/c;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/c;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$G8PZkwajVqfteaswe6-nDJ1KaJI(Lcom/android/settings/wifi/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/c;->u()V

    return-void
.end method

.method public static synthetic lambda$h7YomGdia1ko8mdEHwpwssFiebg(Lcom/android/settings/wifi/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/c;->v()V

    return-void
.end method

.method private m()V
    .locals 2

    .line 1354
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a0369

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1355
    iget-object v0, p0, Lcom/android/settings/wifi/c;->t:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private n()V
    .locals 2

    .line 1359
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a036e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    iget-object v0, p0, Lcom/android/settings/wifi/c;->w:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/c;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/c;->a(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private o()V
    .locals 2

    .line 1364
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a0367

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1365
    iget-object v0, p0, Lcom/android/settings/wifi/c;->y:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private p()V
    .locals 3

    .line 1369
    iget-object v0, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a04bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1371
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a0605

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private q()V
    .locals 2

    .line 1375
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a0232

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private r()V
    .locals 5

    .line 1381
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a033b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1383
    iget-object v0, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 20764
    iget-object v0, v0, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1387
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/c;->B:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    const v4, 0x7f0a064f

    if-ne v2, v3, :cond_6

    .line 1388
    iget-object v2, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1389
    iget-object v1, p0, Lcom/android/settings/wifi/c;->C:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1390
    iget-object v1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a033f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/c;->C:Landroid/widget/TextView;

    .line 1391
    iget-object v1, p0, Lcom/android/settings/wifi/c;->C:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1392
    iget-object v1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a02cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/c;->D:Landroid/widget/TextView;

    .line 1393
    iget-object v1, p0, Lcom/android/settings/wifi/c;->D:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1394
    iget-object v1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a044e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/c;->E:Landroid/widget/TextView;

    .line 1396
    iget-object v1, p0, Lcom/android/settings/wifi/c;->E:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1397
    iget-object v1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a0211

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/c;->F:Landroid/widget/TextView;

    .line 1398
    iget-object v1, p0, Lcom/android/settings/wifi/c;->F:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1399
    iget-object v1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a0212

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/c;->G:Landroid/widget/TextView;

    .line 1400
    iget-object v1, p0, Lcom/android/settings/wifi/c;->G:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v0, :cond_7

    .line 1403
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1405
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_2

    .line 1406
    iget-object v1, p0, Lcom/android/settings/wifi/c;->C:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 1407
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1406
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1408
    iget-object v1, p0, Lcom/android/settings/wifi/c;->E:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 1409
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v2

    .line 1408
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    :cond_2
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v1, :cond_3

    .line 1413
    iget-object v1, p0, Lcom/android/settings/wifi/c;->D:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1416
    :cond_3
    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1417
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1418
    iget-object v1, p0, Lcom/android/settings/wifi/c;->F:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1420
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1421
    iget-object v1, p0, Lcom/android/settings/wifi/c;->G:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void

    .line 1426
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method private s()V
    .locals 8

    .line 1433
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a0532

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1435
    iget-object v0, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 21764
    iget-object v0, v0, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1439
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/c;->H:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    const v4, 0x7f0a052f

    const v5, 0x7f0a052c

    const v6, 0x7f0a0534

    const/16 v7, 0x8

    if-ne v2, v3, :cond_3

    .line 1440
    invoke-direct {p0, v6, v1}, Lcom/android/settings/wifi/c;->a(II)V

    .line 1441
    invoke-direct {p0, v5, v1}, Lcom/android/settings/wifi/c;->a(II)V

    .line 1442
    invoke-direct {p0, v4, v7}, Lcom/android/settings/wifi/c;->a(II)V

    .line 1443
    iget-object v1, p0, Lcom/android/settings/wifi/c;->M:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1444
    iget-object v1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a052d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/c;->M:Landroid/widget/TextView;

    .line 1445
    iget-object v1, p0, Lcom/android/settings/wifi/c;->M:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1446
    iget-object v1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a0530

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/c;->N:Landroid/widget/TextView;

    .line 1447
    iget-object v1, p0, Lcom/android/settings/wifi/c;->N:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1448
    iget-object v1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a052b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/c;->O:Landroid/widget/TextView;

    .line 1449
    iget-object v1, p0, Lcom/android/settings/wifi/c;->O:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v0, :cond_7

    .line 1452
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1454
    iget-object v1, p0, Lcom/android/settings/wifi/c;->M:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1455
    iget-object v1, p0, Lcom/android/settings/wifi/c;->N:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1456
    iget-object v1, p0, Lcom/android/settings/wifi/c;->O:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    .line 1459
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/c;->H:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 1460
    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/c;->a(II)V

    .line 1461
    invoke-direct {p0, v5, v7}, Lcom/android/settings/wifi/c;->a(II)V

    .line 1462
    invoke-direct {p0, v4, v1}, Lcom/android/settings/wifi/c;->a(II)V

    .line 1464
    iget-object v1, p0, Lcom/android/settings/wifi/c;->P:Landroid/widget/TextView;

    if-nez v1, :cond_4

    .line 1465
    iget-object v1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a052e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/c;->P:Landroid/widget/TextView;

    .line 1466
    iget-object v1, p0, Lcom/android/settings/wifi/c;->P:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_4
    if-eqz v0, :cond_7

    .line 1469
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1471
    iget-object v1, p0, Lcom/android/settings/wifi/c;->P:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void

    .line 1475
    :cond_6
    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/c;->a(II)V

    .line 1476
    invoke-direct {p0, v5, v7}, Lcom/android/settings/wifi/c;->a(II)V

    .line 1477
    invoke-direct {p0, v4, v7}, Lcom/android/settings/wifi/c;->a(II)V

    :cond_7
    return-void
.end method

.method private t()V
    .locals 6

    .line 1678
    iget-object v0, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/c;->ab:Landroid/telephony/SubscriptionManager;

    const/4 v0, 0x0

    move v1, v0

    .line 1679
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/c;->aa:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1680
    iget-object v2, p0, Lcom/android/settings/wifi/c;->ab:Landroid/telephony/SubscriptionManager;

    .line 1681
    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1683
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1685
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    const v3, 0x7f1214b6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1687
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/c;->A:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic u()V
    .locals 2

    .line 1645
    iget-object v0, p0, Lcom/android/settings/wifi/c;->p:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method

.method private synthetic v()V
    .locals 0

    .line 1544
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->e()V

    .line 1545
    invoke-virtual {p0}, Lcom/android/settings/wifi/c;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    invoke-interface {v0}, Lcom/android/settings/wifi/d;->b()Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1543
    new-instance p1, Lcom/android/settings/wifi/-$$Lambda$c$h7YomGdia1ko8mdEHwpwssFiebg;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/-$$Lambda$c$h7YomGdia1ko8mdEHwpwssFiebg;-><init>(Lcom/android/settings/wifi/c;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()Landroid/net/wifi/WifiConfiguration;
    .locals 12

    .line 645
    iget v0, p0, Lcom/android/settings/wifi/c;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 649
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 651
    iget-object v2, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 652
    iget-object v2, p0, Lcom/android/settings/wifi/c;->X:Landroid/widget/TextView;

    .line 653
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 652
    invoke-static {v2}, Lcom/android/settingslib/wifi/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 655
    iget-object v2, p0, Lcom/android/settings/wifi/c;->J:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    .line 656
    :cond_2
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result v2

    if-nez v2, :cond_3

    .line 657
    iget-object v2, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 10095
    iget-object v2, v2, Lcom/android/settingslib/wifi/a;->d:Ljava/lang/String;

    .line 657
    invoke-static {v2}, Lcom/android/settingslib/wifi/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 660
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 10764
    iget-object v2, v2, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 660
    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 661
    iget-object v2, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 11764
    iget-object v2, v2, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 661
    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 664
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/c;->Q:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 667
    iget-object v2, p0, Lcom/android/settings/wifi/c;->R:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/coloros/b/a;->a(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 669
    iget v2, p0, Lcom/android/settings/wifi/c;->b:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/c;->a(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/c;->b:I

    .line 671
    iget v2, p0, Lcom/android/settings/wifi/c;->b:I

    const/16 v5, 0x9

    if-eq v2, v5, :cond_1f

    const/16 v6, 0xa

    const/16 v7, 0x22

    const-string v8, "\""

    packed-switch v2, :pswitch_data_0

    return-object v1

    .line 854
    :pswitch_0
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 855
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 856
    iget-object v1, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_20

    .line 857
    iget-object v1, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 858
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_6

    .line 863
    :pswitch_1
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 864
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    goto/16 :goto_6

    .line 707
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 708
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 709
    iget-object v2, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/a;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 711
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v8, 0xd

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 713
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/a;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 715
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v8, 0xe

    invoke-virtual {v2, v8}, Ljava/util/BitSet;->set(I)V

    .line 717
    :cond_5
    iget v2, p0, Lcom/android/settings/wifi/c;->b:I

    const/4 v8, 0x6

    const/4 v9, 0x5

    if-ne v2, v8, :cond_6

    .line 718
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 719
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 720
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 721
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->set(I)V

    .line 722
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 726
    :cond_6
    new-instance v2, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 727
    iget-object v2, p0, Lcom/android/settings/wifi/c;->r:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 728
    iget-object v6, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 729
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    const-string v10, "WifiConfigController"

    const/4 v11, 0x4

    if-eqz v2, :cond_8

    if-eq v2, v11, :cond_7

    if-eq v2, v9, :cond_7

    if-eq v2, v8, :cond_7

    .line 769
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2

    .line 762
    :cond_7
    iget-object v5, p0, Lcom/android/settings/wifi/c;->z:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/settings/wifi/c;->ac:I

    .line 765
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget v6, p0, Lcom/android/settings/wifi/c;->ac:I

    invoke-static {v5, v6}, Lcom/coloros/b/a;->a(Landroid/net/wifi/WifiEnterpriseConfig;I)V

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_e

    if-eq v6, v4, :cond_d

    if-eq v6, v5, :cond_c

    if-eq v6, v7, :cond_b

    if-eq v6, v11, :cond_a

    if-eq v6, v9, :cond_9

    .line 755
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Unknown phase2 method"

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 752
    :cond_9
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2

    .line 749
    :cond_a
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2

    .line 746
    :cond_b
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2

    .line 743
    :cond_c
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v11}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2

    .line 740
    :cond_d
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2

    .line 737
    :cond_e
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 773
    :goto_2
    iget-object v5, p0, Lcom/android/settings/wifi/c;->s:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 774
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 775
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    .line 776
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v6, p0, Lcom/android/settings/wifi/c;->t:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 777
    iget-object v1, p0, Lcom/android/settings/wifi/c;->k:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/wifi/c;->o:Ljava/lang/String;

    .line 778
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 780
    iget-object v1, p0, Lcom/android/settings/wifi/c;->m:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 781
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v3, "/system/etc/security/cacerts"

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_3

    .line 782
    :cond_f
    iget-object v1, p0, Lcom/android/settings/wifi/c;->l:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 783
    iget-object v1, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    if-eqz v1, :cond_12

    .line 784
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "Multiple certs can only be set when editing saved network"

    .line 785
    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_10
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v3, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 12764
    iget-object v3, v3, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 790
    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 792
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v3

    .line 788
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    goto :goto_3

    .line 795
    :cond_11
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 802
    :cond_12
    :goto_3
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 803
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ca_cert ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 805
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") and ca_path ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 807
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") should not both be non-null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 804
    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_13
    iget-object v1, p0, Lcom/android/settings/wifi/c;->w:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 812
    iget-object v3, p0, Lcom/android/settings/wifi/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/android/settings/wifi/c;->n:Ljava/lang/String;

    .line 813
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    move-object v1, v4

    .line 818
    :cond_15
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    if-eq v2, v11, :cond_18

    if-eq v2, v9, :cond_18

    if-ne v2, v8, :cond_16

    goto :goto_4

    :cond_16
    if-ne v2, v7, :cond_17

    .line 823
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/c;->x:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 824
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_5

    .line 826
    :cond_17
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/c;->x:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 827
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/c;->y:Landroid/widget/TextView;

    .line 828
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 827
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_5

    .line 820
    :cond_18
    :goto_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 821
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 831
    :goto_5
    iget-object v1, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 834
    iget-object v1, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_1a

    .line 839
    :cond_19
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 841
    :cond_1a
    iget-object v1, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/a;->a()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/android/settings/wifi/c;->e:Lcom/android/settingslib/wifi/a;

    .line 842
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/a;->b()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 844
    :cond_1b
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v2, "eap_erp"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 694
    :pswitch_3
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 695
    iget-object v1, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_20

    .line 696
    iget-object v1, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[0-9A-Fa-f]{64}"

    .line 697
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 698
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_6

    .line 700
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_6

    .line 677
    :pswitch_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 678
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 679
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 680
    iget-object v1, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_20

    .line 681
    iget-object v1, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 682
    iget-object v2, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v6, :cond_1d

    const/16 v4, 0x1a

    if-eq v1, v4, :cond_1d

    const/16 v4, 0x3a

    if-ne v1, v4, :cond_1e

    :cond_1d
    const-string v1, "[0-9A-Fa-f]*"

    .line 685
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 686
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v1, v3

    goto :goto_6

    .line 688
    :cond_1e
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_6

    .line 673
    :pswitch_5
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_6

    .line 850
    :cond_1f
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 851
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 871
    :cond_20
    :goto_6
    new-instance v1, Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/c;->S:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v3, p0, Lcom/android/settings/wifi/c;->T:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v4, p0, Lcom/android/settings/wifi/c;->V:Landroid/net/StaticIpConfiguration;

    iget-object v5, p0, Lcom/android/settings/wifi/c;->U:Landroid/net/ProxyInfo;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 874
    iget-object v1, p0, Lcom/android/settings/wifi/c;->I:Landroid/widget/Spinner;

    if-eqz v1, :cond_21

    .line 875
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 878
    :cond_21
    iget-object v1, p0, Lcom/android/settings/wifi/c;->K:Landroid/widget/Spinner;

    if-eqz v1, :cond_22

    .line 881
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 880
    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->translatePrefValueToMacRandomizedValue(I)I

    move-result v1

    .line 882
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    :cond_22
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1664
    iget-object v0, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v1, 0x7f0a04b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1665
    iget-object v1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a0604

    .line 1666
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    goto :goto_0

    :cond_0
    const/16 v1, 0x80

    :goto_0
    or-int/lit8 v1, v1, 0x1

    .line 1665
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 1583
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0a0604

    if-ne v0, v1, :cond_2

    .line 1584
    iget-object p1, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    .line 1585
    iget-object v0, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/16 p2, 0x90

    goto :goto_0

    :cond_0
    const/16 p2, 0x80

    :goto_0
    or-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setInputType(I)V

    if-ltz p1, :cond_1

    .line 1589
    iget-object p2, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void

    .line 1591
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const v0, 0x7f0a07a9

    if-ne p1, v0, :cond_4

    .line 1592
    iget-object p1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v0, 0x7f0a07a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    const v0, 0x7f121922

    goto :goto_1

    :cond_3
    const/16 p2, 0x8

    const v0, 0x7f121921

    .line 1602
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/c;->d:Landroid/view/View;

    const v2, 0x7f0a07a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1603
    iget-object p2, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1561
    iget-object p3, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    if-ne p1, p3, :cond_0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1562
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1563
    iget-object p1, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    invoke-interface {p1}, Lcom/android/settings/wifi/d;->a()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1609
    iget-object p2, p0, Lcom/android/settings/wifi/c;->q:Landroid/widget/Spinner;

    const/16 p4, 0x8

    const/4 p5, 0x0

    if-ne p1, p2, :cond_3

    .line 1611
    iget-object p1, p0, Lcom/android/settings/wifi/c;->ad:[Ljava/lang/Integer;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/c;->b:I

    .line 1615
    iget-object p1, p0, Lcom/android/settings/wifi/c;->Z:Landroid/net/wifi/WifiManager;

    invoke-static {p1}, Lcom/coloros/b/a;->a(Landroid/net/wifi/WifiManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/settings/wifi/c;->b:I

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1621
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/c;->R:Landroid/widget/CheckBox;

    invoke-virtual {p1, p5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 1618
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/c;->R:Landroid/widget/CheckBox;

    invoke-virtual {p1, p5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1619
    iget-object p1, p0, Lcom/android/settings/wifi/c;->R:Landroid/widget/CheckBox;

    invoke-virtual {p1, p4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1624
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->g()V

    .line 1626
    iget-object p1, p0, Lcom/android/settings/wifi/c;->Y:Landroid/content/Context;

    iget p2, p0, Lcom/android/settings/wifi/c;->b:I

    invoke-static {p1, p2}, Lcom/android/settings/wifi/dpp/a;->a(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1627
    iget-object p1, p0, Lcom/android/settings/wifi/c;->i:Landroid/widget/ImageButton;

    invoke-virtual {p1, p5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4

    .line 1629
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/c;->i:Landroid/widget/ImageButton;

    invoke-virtual {p1, p4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4

    .line 1631
    :cond_3
    iget-object p2, p0, Lcom/android/settings/wifi/c;->r:Landroid/widget/Spinner;

    if-eq p1, p2, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/c;->s:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_4

    goto :goto_3

    .line 1633
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/c;->u:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_5

    .line 1634
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    if-nez p2, :cond_5

    .line 1635
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->h()V

    goto :goto_4

    .line 1636
    :cond_5
    iget-object p2, p0, Lcom/android/settings/wifi/c;->H:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_6

    .line 1637
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->s()V

    goto :goto_4

    .line 1638
    :cond_6
    iget-object p2, p0, Lcom/android/settings/wifi/c;->J:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_8

    .line 1639
    iget-object p1, p0, Lcom/android/settings/wifi/c;->L:Landroid/widget/TextView;

    if-nez p3, :cond_7

    goto :goto_2

    :cond_7
    move p4, p5

    :goto_2
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    if-ne p3, p1, :cond_a

    .line 1644
    iget-object p1, p0, Lcom/android/settings/wifi/c;->p:Landroid/widget/ScrollView;

    new-instance p2, Lcom/android/settings/wifi/-$$Lambda$c$G8PZkwajVqfteaswe6-nDJ1KaJI;

    invoke-direct {p2, p0}, Lcom/android/settings/wifi/-$$Lambda$c$G8PZkwajVqfteaswe6-nDJ1KaJI;-><init>(Lcom/android/settings/wifi/c;)V

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 1649
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->r()V

    goto :goto_4

    .line 1632
    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->g()V

    .line 1651
    :cond_a
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->e()V

    .line 1652
    invoke-virtual {p0}, Lcom/android/settings/wifi/c;->a()V

    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1572
    iget-object p3, p0, Lcom/android/settings/wifi/c;->h:Landroid/widget/TextView;

    if-ne p1, p3, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 1573
    invoke-direct {p0}, Lcom/android/settings/wifi/c;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1574
    iget-object p1, p0, Lcom/android/settings/wifi/c;->a:Lcom/android/settings/wifi/d;

    invoke-interface {p1}, Lcom/android/settings/wifi/d;->a()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
